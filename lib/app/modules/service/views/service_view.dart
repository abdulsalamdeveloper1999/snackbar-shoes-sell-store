import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../controllers/service_controller.dart';

List<String> icons = [
  'assets/icons/friedhard.svg',
  'assets/icons/suede_deep.svg',
  'assets/icons/deep_cleen.svg',
  'assets/icons/pan.svg'
];
List<String> titles = [
  'Fried Hard Special',
  'Suede Deep Clean',
  'Deep Clean',
  'Sauté',
];

ServiceController _controller = Get.put(ServiceController());

class ServiceView extends GetView<ServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: avatarLogoActionAppBar(),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return _countContainer(
                    svgUri: icons[index],
                    title: titles[index],
                  );
                }),
            Spacer(),
            _checoutRow(),
          ],
        ),
      ),
    );
  }

  Widget _countContainer({required String svgUri, required String title}) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 60.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: Color(0xff182024),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("$svgUri"),
              SizedBox(width: 21.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "$title",
                    size: 10.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                  MyText(
                    text: "\$10.00",
                    size: 14.sp,
                    weight: kfourweight,
                    color: kprimaryColor,
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              counterMethod(),
              // Container(
              //   width: 70.w,
              //   height: 40.h,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GestureDetector(
              //         onTap: () {
              //           _controller.decrement();
              //         },
              //         child: SvgPicture.asset(
              //           "assets/icons/remove.svg",
              //           height: 20.h,
              //           width: 20.w,
              //         ),
              //       ),
              //       Obx(
              //         () => MyText(
              //           text: "${_controller.count}",
              //           color: kwhiteColor,
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () {
              //           _controller.increment();
              //         },
              //         child: SvgPicture.asset(
              //           "assets/icons/positive.svg",
              //           height: 20.h,
              //           width: 20.w,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }

  Widget _checoutRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Total Price: ',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfourweight,
                    color: kwhiteColor),
              ),
              TextSpan(
                text: '\$0.00',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfiveweight,
                    color: kwhiteColor),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.CART);
          },
          child: Container(
            height: 42.h,
            width: 110.w,
            decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(27),
            ),
            child: Center(
              child: MyText(
                text: "Checkout",
                size: 12.sp,
                weight: kfiveweight,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class counterMethod extends StatefulWidget {
  counterMethod();
  @override
  _counterMethodState createState() => new _counterMethodState();
}

class _counterMethodState extends State<counterMethod> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_itemCount != 0) {
                    _itemCount--;
                  } else {
                    _itemCount == 0;
                  }
                });
                // _controller.decrement();
              },
              child: SvgPicture.asset(
                "assets/icons/remove.svg",
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
          // Text(_itemCount.toString()),
          Expanded(
            child: Center(
              child: MyText(
                text: "${_itemCount.toString()}",
                color: kwhiteColor,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // _controller.increment();
                setState(() {
                  _itemCount++;
                });
              },
              child: SvgPicture.asset(
                "assets/icons/positive.svg",
                height: 20.h,
                width: 20.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
