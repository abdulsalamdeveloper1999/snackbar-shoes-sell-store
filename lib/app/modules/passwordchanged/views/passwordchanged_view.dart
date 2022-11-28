import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/passwordchanged_controller.dart';

class PasswordchangedView extends GetView<PasswordchangedController> {
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
              text: "Congratulations!",
              size: 24.sp,
              weight: ksevenweight,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            MyText(
              text: "Password change successfully!",
              size: 12.sp,
              weight: ksevenweight,
              color: kwhitegreBlackyColor,
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SIGNIN);
              },
              child: MyText(
                text: "Go to sign in",
                size: 14.sp,
                weight: ksevenweight,
                color: kprimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
