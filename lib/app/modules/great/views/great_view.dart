import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/great_controller.dart';

class GreatView extends GetView<GreatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconAppBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/congrats.svg"),
            SizedBox(
              height: 50.h,
            ),
            MyText(
              text: "Great!",
              size: 24.sp,
              weight: ksevenweight,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            MyText(
              text: "Ref.#202556565",
              size: 24.sp,
              weight: ksevenweight,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            MyText(
              text: "Thank you. We hope you are satisfied with our service.",
              size: 12.sp,
              weight: ksevenweight,
              color: kwhitegreBlackyColor,
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 48.h,
              width: 335.w,
              child: MyButton(
                text: "Check Status",
                textSize: 14.sp,
                weight: ksixweight,
                textColor: Colors.black,
                onPressed: () {
                  Get.toNamed(Routes.YOURAUTHENTIC);
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: MyText(
                text: "Back",
                size: 14.sp,
                weight: ksevenweight,
                color: kwhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
