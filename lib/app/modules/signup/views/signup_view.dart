import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Constants/form_validators.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Widgets/login_field.dart';
import '../../../../Widgets/my_button.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/signup_controller.dart';

SignupController controller = Get.put(SignupController());

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Form(
            key: UniqueKey(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TextFormField(
                  label: "Email",
                  hint: "example@gmail.com",
                  validator: emailValidator,
                  controller: controller.email1Controller,
                ),
                SizedBox(
                  height: 29.h,
                ),
                _TextFormField(
                  label: "Email",
                  hint: "example@gmail.com",
                  validator: emailValidator,
                  controller: controller.email2Controller,
                ),
                SizedBox(
                  height: 29.h,
                ),
                _TextFormField(
                  label: "Password",
                  hint: "****************",
                  validator: passwordValidator,
                  controller: controller.passwordController,
                ),
                SizedBox(
                  height: 29.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      hoverColor: Colors.black,
                      checkColor: Colors.black,
                      activeColor: kprimaryColor,
                      fillColor:
                          MaterialStateProperty.all<Color>(kprimaryColor),
                      value: this.valuefirst,
                      onChanged: (value) {
                        setState(
                          () {
                            this.valuefirst = value!;
                          },
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.TERMSANDSERVICES);
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(text: 'Accept ', style: krichTextStyleWhite),
                          TextSpan(
                              text: 'terms and conditions ',
                              style: krichTextStyleYellow),
                          TextSpan(text: 'and', style: krichTextStyleWhite),
                          TextSpan(
                              text: ' Services \nagreement',
                              style: krichTextStyleYellow)
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 29.h,
                ),
                SizedBox(
                  width: 335.w,
                  child: MyButton(
                    height: 48.h,
                    text: "Sign Up",
                    textSize: 14.sp,
                    btnBgColor: kprimaryColor,
                    onPressed: () {
                      Get.toNamed(Routes.ACCOUNTCREATED);
                    },
                  ),
                ),
                SizedBox(height: 30.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.offAndToNamed(Routes.SIGNIN);
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
                            text: ' Sign In',
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
                SizedBox(
                  height: 15.h,
                ),
                Divider(
                  thickness: 1,
                  color: kprimaryColor.withOpacity(0.2),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.snackbar('Google', 'Sign up with Google');
                        },
                        child: SvgPicture.asset("assets/icons/google.svg")),
                    SizedBox(
                      width: 30.w,
                    ),
                    InkWell(
                        onTap: () {
                          Get.snackbar('Facebook', 'Sign up with Facebook');
                        },
                        child: SvgPicture.asset("assets/icons/facebook.svg"))
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: 'Please ', style: krichTextStyleWhite),
                      TextSpan(
                          text: 'contact us ', style: krichTextStyleYellow),
                      TextSpan(text: 'and ', style: krichTextStyleWhite),
                      TextSpan(
                          text: 'to register as a commercial user',
                          style: krichTextStyleYellow)
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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
