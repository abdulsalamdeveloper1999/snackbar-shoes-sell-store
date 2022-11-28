import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/login_field.dart';
import 'package:snackbar/app/modules/signup/views/signup_view.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import '../../../../Widgets/my_button.dart';
import '../../../../Widgets/my_text.dart';
import '../../bottombar/views/bottombar_view.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
          child: Form(
            key: controller.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                _TextFormField(
                  label: 'Email',
                  hint: 'example@gmail.com',
                  validator: Validators.compose([
                    Validators.required('Email is required'),
                    Validators.email('Invalid email address'),
                  ]),
                  controller: controller.email1Controller,
                ),
                SizedBox(
                  height: 16.h,
                ),
                _TextFormField(
                  label: 'Password',
                  hint: '****************',
                  controller: controller.passwordController,
                  validator: Validators.compose(
                    [
                      Validators.required('Password is required'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.FORGOTPASSWORD);
                  },
                  child: MyText(
                    text: 'Forgot password?',
                    color: kprimaryColor,
                    size: 14.sp,
                    weight: ksixweight,
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: 335.w,
                  child: MyButton(
                    height: 48.h,
                    text: "Sign in",
                    textSize: 14.sp,
                    btnBgColor: kprimaryColor,
                    onPressed: () {
                      Get.offAllNamed(Routes.BOTTOMBAR);
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/google.svg"),
                    SizedBox(
                      width: 30.w,
                    ),
                    SvgPicture.asset("assets/icons/facebook.svg")
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.offAndToNamed(Routes.SIGNUP);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: kfourweight,
                              color: kwhiteColor,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
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
                ),
              ],
            ),
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
