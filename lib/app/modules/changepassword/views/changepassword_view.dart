import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/form_validators.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/my_button.dart';

import '../../../../Widgets/textforms.dart';
import '../controllers/changepassword_controller.dart';

ChangepasswordController controller = Get.put(ChangepasswordController());

class ChangepasswordView extends GetView<ChangepasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: textAppBar(title: 'Change Password'),
          preferredSize: Size.fromHeight(50),
        ),
        body: Form(
          key: UniqueKey(),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ReuseTextFormField(
                      label: 'Password',
                      hint: '*****************',
                      validator: passwordValidator,
                      controller: controller.passController),
                  SizedBox(
                    height: 30.h,
                  ),
                  ReuseTextFormField(
                      label: 'Confirm Password',
                      hint: '*****************',
                      validator: passwordValidator,
                      controller: controller.confirmpassController),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: MyButton(
                      height: 48.h,
                      text: "Change Password",
                      textSize: 14.sp,
                      btnBgColor: kprimaryColor,
                      onPressed: () {
                        Get.toNamed(Routes.PASSWORDCHANGED);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
