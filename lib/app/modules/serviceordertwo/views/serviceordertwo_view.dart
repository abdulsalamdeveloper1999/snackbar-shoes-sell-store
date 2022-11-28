import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/my_button.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/serviceordertwo_controller.dart';

class ServiceordertwoView extends GetView<ServiceordertwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Details'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _orderDetail(),
              SizedBox(
                height: 20.h,
              ),
              MyText(
                text: "Pickup Details",
                size: 16.sp,
                weight: ksixweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              _pickupDetails(),
              SizedBox(
                height: 20.h,
              ),
              MyText(
                text: "Delivery Details",
                size: 16.sp,
                weight: ksixweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              _deliveryDetails(),
              SizedBox(
                height: 24.h,
              ),
              _anotherStepper(),
              SizedBox(
                height: 29.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: Get.width,
                child: MyButton(
                  text: 'Cancel Order',
                  textSize: 14.sp,
                  btnBgColor: kprimaryColor,
                  onPressed: () {
                    Get.toNamed(Routes.GIVEFEEDBACK);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _deliveryDetails() {
    return _container(
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText(
                  text: "Date & Time",
                  size: 10.sp,
                  color: kwhiteColor,
                  weight: kfourweight,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "Sept 22, 2022 & 08 AM - 09  AM",
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
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText(
                  text: "Address",
                  size: 10.sp,
                  color: kwhiteColor,
                  weight: kfourweight,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "3264 Barai, Kasba Brahmanbaria",
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

  Widget _pickupDetails() {
    return _container(
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText(
                  text: "Date & Time",
                  size: 10.sp,
                  color: kwhiteColor,
                  weight: kfourweight,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "Sept 22, 2022 & 08 AM - 09  AM",
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
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText(
                  text: "Address",
                  size: 10.sp,
                  color: kwhiteColor,
                  weight: kfourweight,
                ),
              ),
              Expanded(
                child: MyText(
                  text: "3264 Barai, Kasba Brahmanbaria",
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

  Widget _anotherStepper() {
    List<StepperData> stepperData = [
      StepperData(
        title: "Order placed on 07 january",
      ),
      StepperData(
        title: "Pickup at Sept 22, 2022 & 9 AM - 10 AM",
      ),
      StepperData(
        title: "Assessment",
      ),
      StepperData(
        title: "Cleaning",
      ),
      StepperData(
        title: "Restoration",
      ),
      StepperData(
        title: "Finishing Touches",
      ),
      StepperData(
        title: "Final Check",
      ),
      StepperData(
        title: "READY FOR PICK UP!",
      ),
      StepperData(
        title: "Deliver at  Sept 25, 2022 & 8 AM - 9 AM",
      ),
    ];

    return SingleChildScrollView(
      child: AnotherStepper(
        scrollPhysics: NeverScrollableScrollPhysics(),
        titleTextStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: kfourweight,
          color: kwhiteColor,
        ),
        gap: 15,
        stepperList: stepperData,
        stepperDirection: Axis.vertical,
        horizontalStepperHeight: 10,
        dotWidget: DottedBorder(
          borderType: BorderType.Circle,
          color: kprimaryColor,
          strokeWidth: 1,
          child: SvgPicture.asset("assets/icons/completed.svg"),
        ),
        activeBarColor: kprimaryColor,
        inActiveBarColor: kgreyColor,
        activeIndex: 1,
        barThickness: 1,
      ),
    );
  }

  Widget _orderDetail() {
    return _container(Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MyText(
                text: "Order ID",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
            ),
            Expanded(
              child: MyText(
                text: "#1036",
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
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MyText(
                text: "Tracking Number",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
            ),
            Expanded(
              child: MyText(
                text: "UC58465",
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
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MyText(
                text: "QTY",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
            ),
            Expanded(
              child: MyText(
                text: "4",
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
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MyText(
                text: "Total amount",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
            ),
            Expanded(
              child: MyText(
                text: "\$500.00",
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
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MyText(
                text: "Estimate time",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
            ),
            Expanded(
              child: MyText(
                text: "Sept 22, 2022",
                size: 12.sp,
                weight: kfourweight,
                color: kwhiteColor,
              ),
            ),
          ],
        ),
      ],
    ));
  }

  Widget _container(var child) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 335.w,
      decoration: BoxDecoration(
        color: kcontainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
