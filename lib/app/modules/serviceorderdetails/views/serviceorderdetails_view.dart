import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/appbars.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/serviceorderdetails_controller.dart';

class ServiceorderdetailsView extends GetView<ServiceorderdetailsController> {
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
                height: 24.h,
              ),
              _anotherStepper(),
              SizedBox(
                height: 29.h,
              ),
              MyText(
                text: "Shipping information",
                size: 16.sp,
                weight: ksixweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              _shippingInformation(),
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
                    Get.back();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _shippingInformation() {
    return _container(
      Column(
        children: [
          Row(
            children: [
              MyText(
                text: "Contact name",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
              SizedBox(
                width: 58.w,
              ),
              MyText(
                text: "Raju Mullah",
                size: 12.sp,
                weight: kfourweight,
                color: kwhiteColor,
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
            children: [
              MyText(
                text: "Address",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
              SizedBox(
                width: 82.w,
              ),
              MyText(
                text: "3264 Barai, Kasba\nBrahmanbaria",
                size: 12.sp,
                weight: kfourweight,
                color: kwhiteColor,
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
            children: [
              MyText(
                text: "Contact number",
                size: 10.sp,
                color: kwhiteColor,
                weight: kfourweight,
              ),
              SizedBox(
                width: 44.w,
              ),
              MyText(
                text: "+8801784453204",
                size: 12.sp,
                weight: kfourweight,
                color: kwhiteColor,
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
        title: "Processing",
      ),
      StepperData(
        title: "Ready for shipping",
      ),
      StepperData(
        title: "Deliver at 27 sept 2022",
      ),
      StepperData(
        title: "Completed",
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
          children: [
            MyText(
              text: "Order ID",
              size: 10.sp,
              color: kwhiteColor,
              weight: kfourweight,
            ),
            SizedBox(
              width: 87.w,
            ),
            MyText(
              text: "#1036",
              size: 12.sp,
              weight: kfourweight,
              color: kwhiteColor,
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
          children: [
            MyText(
              text: "Tracking Number",
              size: 10.sp,
              color: kwhiteColor,
              weight: kfourweight,
            ),
            SizedBox(
              width: 42.w,
            ),
            MyText(
              text: "UC58465",
              size: 12.sp,
              weight: kfourweight,
              color: kwhiteColor,
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
          children: [
            MyText(
              text: "QTY",
              size: 10.sp,
              color: kwhiteColor,
              weight: kfourweight,
            ),
            SizedBox(
              width: 102.w,
            ),
            MyText(
              text: "4",
              size: 12.sp,
              weight: kfourweight,
              color: kwhiteColor,
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
          children: [
            MyText(
              text: "Total amount",
              size: 10.sp,
              color: kwhiteColor,
              weight: kfourweight,
            ),
            SizedBox(
              width: 60.w,
            ),
            MyText(
              text: "\$500.00",
              size: 12.sp,
              weight: kfourweight,
              color: kwhiteColor,
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
          children: [
            MyText(
              text: "Estimate time",
              size: 10.sp,
              color: kwhiteColor,
              weight: kfourweight,
            ),
            SizedBox(
              width: 59.w,
            ),
            MyText(
              text: "Sept 22, 2022",
              size: 12.sp,
              weight: kfourweight,
              color: kwhiteColor,
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
