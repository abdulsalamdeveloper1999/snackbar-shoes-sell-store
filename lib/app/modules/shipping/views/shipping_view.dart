import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Constants/form_validators.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import 'package:validatorless/validatorless.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/login_field.dart';
import '../controllers/shipping_controller.dart';

class ShippingView extends GetView<ShippingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: 'Shipping details'),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Form(
        key: UniqueKey(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: _checkBox(
                  text: 'We shipping to billing address.',
                  texttwo: 'Input new shipping address. ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 8, right: 20, bottom: 20),
                child: Column(
                  children: [
                    _TextFormField(
                      label: '*First name',
                      hint: 'Type here',
                      validator: firstnameValidator,
                      controller: controller.firstnameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: '*Last name',
                      hint: 'Type here',
                      validator: lastnameValidator,
                      controller: controller.lastnameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: '*Address',
                      hint: 'Type here',
                      validator: addressValidator,
                      controller: controller.addressnameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: '*City',
                      hint: 'Type here',
                      validator: cityValidator,
                      controller: controller.citynameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _dropDown(),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: 'State',
                      hint: 'Type here',
                      validator: stateValidator,
                      controller: controller.firstnameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: '*Zip / Postal code',
                      hint: 'Type here',
                      validator: Validators.required('Zip code is required'),
                      controller: controller.zipcodeController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _TextFormField(
                      label: '*Phone',
                      hint: 'Type here',
                      validator:
                          Validatorless.number('Number not a characters'),
                      controller: controller.firstnameController,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 48.h,
                      width: Get.width,
                      child: MyButton(
                        text: 'Continue',
                        textColor: Colors.black,
                        textSize: 14.sp,
                        btnBgColor: kprimaryColor,
                        onPressed: () {
                          Get.toNamed(Routes.DELIVERYMETHOD);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _checkBox({required String text, required String texttwo}) {
    ShippingController controller = Get.put(ShippingController());
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => Checkbox(
                checkColor: Colors.black,
                activeColor: kprimaryColor,
                side: BorderSide(color: kwhiteColor),
                value: controller.checkBoolZero.value,
                onChanged: (value) {
                  controller.changestatezero();
                },
              ),
            ),
            MyText(
              text: "$text",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            )
          ],
        ),
        Row(
          children: [
            Obx(
              () => Checkbox(
                checkColor: Colors.black,
                activeColor: kprimaryColor,
                side: BorderSide(color: kwhiteColor),
                value: controller.checkBoolOne.value,
                onChanged: (value) {
                  controller.changestateone();
                },
              ),
            ),
            MyText(
              text: "$texttwo",
              size: 14.sp,
              weight: kfourweight,
              color: kwhiteColor,
            )
          ],
        ),
      ],
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
          width: Get.width,
          child: LoginFields(
            fieldValidator: validator,
            hintText: '$hint',
            controller: controller,
          ),
        )
      ],
    );
  }

  Widget _dropDown() {
    final List<String> countrynames = ['Pakistan', 'India', 'Bangladesh'];

    String? selectedValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: 'Country',
          color: kwhiteColor,
          size: 14.sp,
          weight: kfiveweight,
        ),
        SizedBox(
          height: 8.h,
        ),
        DropdownButtonFormField2(
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: kfourweight,
              color: kwhitegreBlackyColor),
          decoration: InputDecoration(
            //Add isDense true and zero Padding.
            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: kwhitegreBlackyColor),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kwhitegreBlackyColor),
              borderRadius: BorderRadius.circular(8),
            ),
            //Add more decoration as you want here
            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
          ),
          isExpanded: true,
          hint: const Text(
            'Select Your Country',
            style: TextStyle(fontSize: 14, color: kwhitegreBlackyColor),
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: kwhiteColor,
          ),
          iconSize: 30,
          buttonHeight: 50,
          buttonPadding: const EdgeInsets.only(left: 20, right: 10),
          dropdownDecoration: BoxDecoration(
            color: kbackgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kwhitegreBlackyColor),
          ),
          items: countrynames
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Please select Country.';
            }
          },
          onChanged: (value) {
            //Do something when changing the item if you want.
          },
          onSaved: (value) {
            selectedValue = value.toString();
          },
        ),
      ],
    );
  }
}
