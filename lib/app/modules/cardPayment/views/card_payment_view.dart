import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/login_field.dart';
import '../../../../Widgets/my_button.dart';
import '../../../../Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/card_payment_controller.dart';

class CardPaymentView extends GetView<CardPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Card Payment'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: UniqueKey(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Payment",
                  size: 16.sp,
                  weight: ksixweight,
                  color: kwhiteColor,
                ),
                SizedBox(
                  height: 16.h,
                ),
                _textFormField(
                  label: 'Name on Card',
                  hint: 'Card of your name',
                  validator: Validators.required('Name is required'),
                  controller: controller.nameonCardController,
                ),
                SizedBox(
                  height: 16.h,
                ),
                _textFormField(
                  label: 'Card number',
                  hint: '1234 5678 9123 5641',
                  validator: Validatorless.min(14, 'Number Should be 14 Digit'),
                  controller: controller.cardNumberController,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SvgPicture.asset("assets/icons/visa.svg"),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Exp. of date',
                          color: kwhiteColor,
                          size: 14.sp,
                          weight: kfiveweight,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          width: 148.72.w,
                          child: TextField(
                            style: TextStyle(
                              color: kwhitegreBlackyColor,
                              fontSize: 12.sp,
                              fontWeight: kfourweight,
                            ),
                            readOnly: true,
                            controller: controller.dobController,
                            decoration: InputDecoration(
                              hintText: 'Expiry Date ',
                              hintStyle: TextStyle(
                                  color: kwhitegreBlackyColor,
                                  fontSize: 12.sp,
                                  fontWeight: kfourweight),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kwhitegreBlackyColor),
                              ),
                            ),
                            onTap: () async {
                              // hide keyboard
                              FocusScope.of(context).unfocus();
                              var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                                builder: (context, child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      primaryColor: kcontainer,
                                      accentColor: kcontainer,
                                      colorScheme: const ColorScheme.light(
                                          primary: kcontainer),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                              controller.dobChanged(date);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 160.w,
                          child: _textFormField(
                            label: 'CVC',
                            hint: '***',
                            validator: Validatorless.min(3, 'CVC is required'),
                            controller: controller.cvcController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    _checkBox(),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 48.h,
                  width: Get.width,
                  child: MyButton(
                    text: 'Pay now',
                    textColor: Colors.black,
                    textSize: 14.sp,
                    btnBgColor: kprimaryColor,
                    onPressed: () {
                      Get.toNamed(Routes.GIVEFEEDBACK);
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFormField(
      {required String label,
      required String hint,
      required var validator,
      var controller,
      var suffixIcon}) {
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
        LoginFields(
          fieldValidator: validator,
          hintText: '$hint',
          controller: controller,
          suffixIccon: suffixIcon,
        )
      ],
    );
  }

  Widget _checkBox() {
    CardPaymentController controller = Get.put(CardPaymentController());
    return Row(
      children: [
        Obx(
          () => Checkbox(
            fillColor: MaterialStatePropertyAll(kprimaryColor),
            hoverColor: kprimaryColor,
            activeColor: kprimaryColor,
            checkColor: Colors.black,
            focusColor: kprimaryColor,
            value: controller.checkBool.value,
            onChanged: (value) {
              controller.checkBool.value = !controller.checkBool.value;
            },
          ),
        ),
        MyText(
          text: "I agree return policy",
          size: 14.sp,
          weight: kfourweight,
          color: kprimaryColor,
        )
      ],
    );
  }
}
