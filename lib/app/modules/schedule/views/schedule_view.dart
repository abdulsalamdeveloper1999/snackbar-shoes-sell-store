import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/login_field.dart';
import '../../../../Widgets/textforms.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Schedule'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseTextFormField(
                    label: 'Make',
                    hint: 'Type here',
                    controller: controller.makeController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ReuseTextFormField(
                    label: 'Model',
                    hint: 'Type here',
                    controller: controller.modelController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  MyText(
                    text: "Colors",
                    size: 14.sp,
                    weight: kfiveweight,
                    color: kwhiteColor,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  _radioButtons(),
                  SizedBox(
                    height: 16.h,
                  ),
                  MyText(
                    text: 'Any Concerns',
                    color: kwhiteColor,
                    size: 14.sp,
                    weight: kfiveweight,
                  ),
                  _anyConcernContainer(),
                  SizedBox(
                    height: 16.h,
                  ),
                  MyText(
                    text: 'Add Pictures',
                    color: kwhiteColor,
                    size: 14.sp,
                    weight: kfiveweight,
                  ),
                  _uploadContainer(),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
            _bottomContainer()
          ],
        ),
      ),
    );
  }

  Widget _bottomContainer() {
    return Container(
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
              Get.toNamed(Routes.SCHEDULE_TWO);
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
                  text: 'Continue',
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

  Widget _radioButtons() {
    return Row(
      children: [
        Obx(
          () => Transform.scale(
            scale: 1.5,
            child: Radio(
              splashRadius: 1,
              fillColor: MaterialStateProperty.all(kwhiteColor),
              activeColor: kprimaryColor,
              focusColor: kprimaryColor,
              hoverColor: kprimaryColor,
              value: 'white',
              groupValue: controller.selectedShipment.value,
              onChanged: (value) {
                controller.onChange(value);
              },
            ),
          ),
        ),
        Obx(
          () => Transform.scale(
            scale: 1.5,
            child: Radio(
              fillColor: MaterialStateProperty.all(Color(0xffFFC000)),
              activeColor: Colors.black,
              focusColor: kprimaryColor,
              hoverColor: kprimaryColor,
              value: 'yellow',
              groupValue: controller.selectedShipment.value,
              onChanged: (value) {
                controller.onChange(value);
              },
            ),
          ),
        ),
        Obx(
          () => Transform.scale(
            scale: 1.5,
            child: Radio(
              fillColor: MaterialStateProperty.all(Color(0xff24D06C)),
              activeColor: Colors.black,
              focusColor: kprimaryColor,
              hoverColor: kprimaryColor,
              value: 'green',
              groupValue: controller.selectedShipment.value,
              onChanged: (value) {
                controller.onChange(value);
              },
            ),
          ),
        ),
        Obx(
          () => Transform.scale(
            scale: 1.5,
            child: Radio(
              fillColor: MaterialStateProperty.all(Color(0xff2F80ED)),
              activeColor: Colors.black,
              focusColor: kprimaryColor,
              hoverColor: kprimaryColor,
              value: 'blue',
              groupValue: controller.selectedShipment.value,
              onChanged: (value) {
                controller.onChange(value);
              },
            ),
          ),
        ),
        Obx(
          () => Transform.scale(
            scale: 1.5,
            child: Radio(
              fillColor: MaterialStateProperty.all(Color(0xffFF3131)),
              activeColor: Colors.black,
              focusColor: kprimaryColor,
              hoverColor: kprimaryColor,
              value: 'red',
              groupValue: controller.selectedShipment.value,
              onChanged: (value) {
                controller.onChange(value);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _anyConcernContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, top: 5),
      height: 140.h,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: kwhitegreyColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: controller.concrensController,
        style: TextStyle(
          color: kwhiteColor,
          fontSize: 14.sp,
          fontWeight: kfourweight,
        ),
        decoration: InputDecoration(
            hintText: 'Type here',
            hintStyle: TextStyle(
              color: kwhitegreyColor,
              fontSize: 14.sp,
              fontWeight: kfourweight,
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }

  Widget _uploadContainer() {
    return InkWell(
      onTap: () {
        Get.snackbar('Upload', 'Image Upload Button');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 90.h,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kwhitegreyColor)),
        child: Center(
          child: SvgPicture.asset("assets/icons/upIcon.svg"),
        ),
      ),
    );
  }
}
