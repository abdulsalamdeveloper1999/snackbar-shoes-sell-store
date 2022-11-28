import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/modules/bottombar/views/bottombar_view.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../introduction/views/introduction_view.dart';
import '../controllers/accountcreated_controller.dart';

class AccountcreatedView extends GetView<AccountcreatedController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return onBackButtonPressed(context);
      },
      child: Scaffold(
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
                text: "Account created successfully!",
                size: 12.sp,
                weight: ksevenweight,
                color: kwhitegreBlackyColor,
              ),
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.BOTTOMBAR);
                },
                child: MyText(
                  text: "Go to Home",
                  size: 14.sp,
                  weight: ksevenweight,
                  color: kprimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
