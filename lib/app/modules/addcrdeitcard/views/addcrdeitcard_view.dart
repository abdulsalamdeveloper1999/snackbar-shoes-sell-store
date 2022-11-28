import 'package:flutter/cupertino.dart';
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
import '../../shipping/controllers/shipping_controller.dart';
import '../controllers/addcrdeitcard_controller.dart';

class AddcrdeitcardView extends GetView<AddcrdeitcardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Payment'),
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
                  text: "Details",
                  size: 16.sp,
                  weight: ksixweight,
                  color: kwhiteColor,
                ),
                SizedBox(
                  height: 8.h,
                ),
                _container(),
                SizedBox(
                  height: 20.h,
                ),
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
                  controller: controller.nameoncardController,
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
                    Expanded(
                      child: Column(
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
                          GetBuilder<AddcrdeitcardController>(
                              builder: (controller) {
                            return SizedBox(
                              width: 148.72.w,
                              child: TextFormField(
                                controller: controller.pickUpDateController,
                                decoration: InputDecoration(
                                  hintText:
                                      '${controller.dateTimeNow.month}--${controller.dateTimeNow.day}--${controller.dateTimeNow.year}',
                                  hintStyle: TextStyle(
                                      color: kwhiteColor.withOpacity(0.5),
                                      fontSize: 12.sp,
                                      fontWeight: kfourweight),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputStyling.inputEnableBorder,
                                  enabledBorder: InputStyling.inputEnableBorder,
                                  focusedBorder: InputStyling.inputEnableBorder,
                                ),
                                style: TextStyle(
                                  color: kwhitegreBlackyColor,
                                  fontSize: 12.sp,
                                  fontWeight: kfourweight,
                                ),
                                readOnly: true,
                                onTap: () async {
                                  FocusScope.of(context).unfocus();
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (BuildContext child) => SizedBox(
                                      height: 250.h,
                                      child: CupertinoTheme(
                                        data: CupertinoThemeData(
                                          textTheme: CupertinoTextThemeData(
                                            actionTextStyle: TextStyle(
                                                fontSize: 16,
                                                color: kwhiteColor),
                                            pickerTextStyle: TextStyle(
                                                fontSize: 16,
                                                color: kwhiteColor),
                                            dateTimePickerTextStyle: TextStyle(
                                                fontSize: 16,
                                                color: kwhiteColor),
                                          ),
                                        ),
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          backgroundColor: Color(0xff242C30),
                                          initialDateTime:
                                              controller.dateTimeNow,
                                          onDateTimeChanged:
                                              (DateTime newtime) {
                                            controller.onChange(newtime);
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: _textFormField(
                              label: 'CVC',
                              hint: '***',
                              validator:
                                  Validatorless.min(3, 'CVC is required'),
                              controller: controller.cvcNumberController,
                            ),
                          ),
                        ],
                      ),
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
                    text: 'Save',
                    textColor: Colors.black,
                    textSize: 14.sp,
                    btnBgColor: kprimaryColor,
                    onPressed: () {
                      Get.toNamed(Routes.PROFILE);
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

  Widget _container() {
    return Container(
      padding: EdgeInsets.all(10),
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kcontainer,
      ),
      child: Column(
        children: [
          _row(
            leftText: '4 items subtotal',
            rightText: '\$500.00',
          ),
          SizedBox(height: 16.h),
          _row(
            leftText: 'Discount',
            rightText: '-\$0.00',
          ),
          SizedBox(height: 16.h),
          _row(
            leftText: 'Shipping Method',
            rightText: 'Free',
          ),
          SizedBox(height: 10.h),
          Divider(
            thickness: 1,
            color: kwhitegreBlackyColor,
          ),
          SizedBox(height: 10.h),
          _row(leftText: 'Total', rightText: '\$500.00', color: kprimaryColor),
        ],
      ),
    );
  }

  _row(
      {required String leftText,
      required String rightText,
      var color = kwhiteColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: MyText(
            text: "$leftText",
            size: 12.sp,
            weight: kfiveweight,
            color: kwhiteColor,
          ),
        ),
        FittedBox(
          child: MyText(
            text: "$rightText",
            size: 14.sp,
            weight: kfiveweight,
            color: color,
          ),
        )
      ],
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
    ShippingController controller = Get.put(ShippingController());
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
