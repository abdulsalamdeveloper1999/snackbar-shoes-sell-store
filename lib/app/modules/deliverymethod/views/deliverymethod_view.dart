import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';

import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/my_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/deliverymethod_controller.dart';

class DeliverymethodView extends GetView<DeliverymethodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Shipping'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _rowFirst(),
            SizedBox(
              height: 20.h,
            ),
            _shipppingInfo(),
            SizedBox(
              height: 20.h,
            ),
            MyText(
              text: "Delivery method",
              size: 18.sp,
              weight: ksixweight,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 16.h,
            ),
            _selectionContainer(),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 48.h,
              width: Get.width,
              child: MyButton(
                text: 'Continue',
                textColor: Colors.black,
                textSize: 14.sp,
                btnBgColor: kprimaryColor,
                onPressed: () {
                  Get.toNamed(Routes.PAYMENT);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _selectionContainer() {
    DeliverymethodController _controller = Get.put(DeliverymethodController());
    return Container(
      padding: EdgeInsets.all(10),
      height: 60.h,
      width: 335.w,
      decoration: BoxDecoration(
        border: Border.all(color: kprimaryColor, width: 1.w),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Obx(
                () => Radio(
                    activeColor: kprimaryColor,
                    focusColor: kprimaryColor,
                    hoverColor: kprimaryColor,
                    value: 'standard shipping',
                    groupValue: _controller.selectedShipment.value,
                    onChanged: (value) {
                      _controller.onChange(value);
                    }),
              ),
              MyText(
                text: "Standard Shipping",
                size: 12.sp,
                weight: kfiveweight,
                color: kprimaryColor,
              ),
            ],
          ),
          MyText(
            text: "Free",
            size: 12.sp,
            weight: kfiveweight,
            color: kprimaryColor,
          )
        ],
      ),
    );
  }

  Widget _rowFirst() {
    return Row(
      children: [
        Expanded(
          child: MyText(
            text: "Shipping Info",
            size: 16.sp,
            weight: ksixweight,
            color: kwhiteColor,
          ),
        ),
        FittedBox(
          child: MyText(
            color: kwhiteColor,
            text: "Change",
            size: 14.sp,
            weight: ksixweight,
          ),
        )
      ],
    );
  }

  Widget _shipppingInfo() {
    return Container(
      padding: EdgeInsets.all(10),
      width: 335.w,
      decoration: BoxDecoration(
        color: Color(0xff182024),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Contact name",
                  size: 12.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "Raju Mullah",
                  size: 10.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Divider(
            height: 1.h,
            thickness: 1,
            color: kwhitegreBlackyColor,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: "Contact number",
                  size: 12.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "+8801784453204",
                  size: 10.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Divider(
            height: 1.h,
            thickness: 1,
            color: kwhitegreBlackyColor,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText(
                  text: "Ship to",
                  size: 12.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "45201 Owen Street. Belleville MT 48111, USA",
                  size: 10.sp,
                  weight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
