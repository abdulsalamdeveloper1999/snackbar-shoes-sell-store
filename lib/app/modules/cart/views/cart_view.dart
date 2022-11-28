import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/login_field.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Widgets/appbars.dart';
import '../controllers/cart_controller.dart';

CartController _controller = Get.put(CartController());

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: backAppBar(title: 'Cart'),
        ),
        body: SlidingUpPanel(
          maxHeight: 335.h,
          panel: _slidingPanel(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
            child: Form(
              key: UniqueKey(),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          Get.snackbar("Removed", "Product is removed");
                        },
                        background: Container(
                          color: Color(0xff182024),
                          width: Get.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("assets/icons/cartRemove.svg"),
                              SvgPicture.asset("assets/icons/cartRemove.svg"),
                            ],
                          ),
                        ),
                        child: _cartContainer(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget stackBehindDismiss() {
  return SvgPicture.asset(
    "assets/icons/cartRemove.svg",
  );
}

Widget _cartContainer() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(10),
    height: 70.h,
    width: 335.w,
    decoration: BoxDecoration(
      color: Color(0xff182024),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50.h,
              width: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/icons/cartshirt.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "T-shirt",
                  size: 10.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                MyText(
                  text: "\$10.00",
                  size: 14.sp,
                  weight: ksixweight,
                  color: kprimaryColor,
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 60.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      _controller.decrement();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/remove.svg',
                      height: 20.h,
                      width: 20.h,
                    ),
                  ),
                  Obx(
                    () => MyText(
                      text: "${_controller.count}",
                      size: 14.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _controller.increment();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/positive.svg',
                      height: 20.h,
                      width: 20.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _slidingPanel() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    height: 120.h,
    color: Color(0xff182024),
    child: Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        SvgPicture.asset("assets/icons/line.svg"),
        SizedBox(
          height: 21.h,
        ),
        LoginFields(
          controller: _controller.promoController,
          suffixIccon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                onTap: () {
                  Get.snackbar('Promocode', 'Code has been applied');
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: SvgPicture.asset("assets/icons/apply.svg")),
          ),
          hintText: 'Have coupon code?',
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "4 items subtotal",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            ),
            MyText(
              text: "\$1500.00",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            ),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "Discount",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            ),
            MyText(
              text: "\$0.00",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            ),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "Total",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            ),
            MyText(
              text: "\$1500.00",
              size: 14.sp,
              weight: kfourweight,
              color: kprimaryColor,
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kprimaryColor),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SHIPPING);
                      },
                      child: MyText(
                        text: 'Continue Shipping',
                        size: 14.sp,
                        weight: ksixweight,
                        color: kprimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SCHEDULE);
                  },
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kprimaryColor),
                    child: Center(
                      child: MyText(
                        text: 'Checkout',
                        size: 14.sp,
                        weight: ksixweight,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
