import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/appbars.dart';
import 'package:snackbar/Widgets/my_text.dart';

import '../../../routes/app_pages.dart';
import '../../service/views/service_view.dart';
import '../controllers/orderdetails_controller.dart';

class OrderdetailsView extends GetView<OrderdetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Order Details'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Customer Details",
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    _customerDetails(),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: "PickUp Details",
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    _PickUpDetail(),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: "Delivery Details",
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    _DeliveryDetails(),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: "Items List",
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: icons.length,
                        itemBuilder: (context, index) {
                          return _countContainer(
                            svgUri: icons[index],
                            title: titles[index],
                          );
                        }),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: "Price Summary",
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    _PriceSummary(),
                  ],
                ),
              ),
            ),
            _bottomContainer(),
          ],
        ),
      ),
    );
  }

  Widget _PriceSummary() {
    return _customerDetailContainer(Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MyText(
                    text: "Total item",
                    size: 10.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
                FittedBox(
                  child: MyText(
                    text: "4",
                    size: 12.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Divider(
              height: 1,
              thickness: 1,
              color: kwhitegreBlackyColor.withOpacity(0.5),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MyText(
                    text: "Subtotal",
                    size: 10.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
                FittedBox(
                  child: MyText(
                    text: "\$40.00",
                    size: 12.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Divider(
              height: 1,
              thickness: 1,
              color: kwhitegreBlackyColor.withOpacity(0.5),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MyText(
                    text: "Promo code discount",
                    size: 10.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
                FittedBox(
                  child: MyText(
                    text: "\$0.00",
                    size: 12.sp,
                    weight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("$svgUri"),
              SizedBox(
                width: 21.w,
              ),
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
              Container(
                width: 70.w,
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.decrement();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/remove.svg",
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                    Obx(
                      () => MyText(
                        text: "${controller.count}",
                        color: kwhiteColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.increment();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/positive.svg",
                        height: 20.h,
                        width: 20.w,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _DeliveryDetails() {
    return _customerDetailContainer(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Date & Time",
                  size: 10.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "Sept 21, 2022 & 08 AM - 09  AM",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kwhitegreBlackyColor.withOpacity(0.5),
          ),
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Address",
                  size: 10.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "3264 Barai, Kasba,\nBrahmanbaria",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _PickUpDetail() {
    return _customerDetailContainer(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Date & Time",
                  size: 10.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "Sept 21, 2022 & 08 AM - 09  AM",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kwhitegreBlackyColor.withOpacity(0.5),
          ),
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Address",
                  size: 10.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "3264 Barai, Kasba,Brahmanbaria",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customerDetails() {
    return _customerDetailContainer(Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _customeName(
          Name: 'Raju Mehta',
        ),
        Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        _customeNumber(number: '+8801784453204')
      ],
    ));
  }

  Widget _customeName({required String Name}) {
    return Row(
      children: [
        Expanded(
          child: MyText(
            text: "Name",
            size: 10.sp,
            weight: kfourweight,
            color: kwhiteColor,
          ),
        ),
        Expanded(
          child: MyText(
            text: "$Name",
            size: 12.sp,
            weight: kfourweight,
            color: kwhiteColor,
          ),
        ),
      ],
    );
  }

  Widget _customeNumber({required String number}) {
    return Row(
      children: [
        Expanded(
          child: MyText(
            text: "Contact Number",
            size: 10.sp,
            weight: kfourweight,
            color: kwhiteColor,
          ),
        ),
        Expanded(
          child: MyText(
            text: "$number",
            size: 12.sp,
            weight: kfourweight,
            color: kwhiteColor,
          ),
        ),
      ],
    );
  }

  Widget _customerDetailContainer(var child) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(15),
      width: 335.w,
      decoration: BoxDecoration(
        color: kcontainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }

  Widget _bottomContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 92.h,
      width: double.infinity,
      color: kbackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Total Price',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfourweight,
                    color: kwhiteColor,
                  ),
                ),
                TextSpan(
                  text: ' \$0.00',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: ksevenweight,
                    color: kwhiteColor,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PAYMENT);
            },
            child: Container(
              height: 42.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(36),
              ),
              child: Center(
                child: MyText(
                  text: 'Place Order',
                  size: 14.sp,
                  weight: ksixweight,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
