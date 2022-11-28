import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Constants/form_validators.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/login_field.dart';
import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: textAppBar(title: 'Forgot Password'),
        preferredSize: Size.fromHeight(50),
      ),
      body: Form(
        key: UniqueKey(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              _TextFormField(
                  label: 'Email',
                  hint: 'example@gmail.com',
                  validator: emailValidator,
                  controller: controller.emailControler),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 48.h,
                width: Get.width,
                child: MyButton(
                  onPressed: () {
                    Get.toNamed(Routes.CHANGEPASSWORD);
                  },
                  text: "Send",
                  btnBgColor: kprimaryColor,
                  textColor: Colors.black,
                  textSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.SIGNIN);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfourweight,
                          color: kwhiteColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign in',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfourweight,
                          color: kprimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _TextFormField(
      {required String label,
      required String hint,
      required var validator,
      required var controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: '$label',
          color: kwhiteColor,
          size: 14.sp,
          weight: kfiveweight,
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          child: LoginFields(
            fieldValidator: validator,
            hintText: '$hint',
            controller: controller,
          ),
        )
      ],
    );
  }
}
