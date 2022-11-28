import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

Widget ProductDetailbottomContainer() {
  return Container(
    height: 92.h,
    width: double.infinity,
    color: kbackgroundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Total',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfourweight,
                    color: kwhiteColor),
              ),
              TextSpan(
                text: ' \$500',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: ksevenweight,
                  color: kprimaryColor,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.snackbar('Add to cart', 'Product added');
          },
          child: Container(
            height: 48.h,
            width: 174.w,
            decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(36),
            ),
            child: Center(
              child: MyText(
                text: 'Add to cart',
                size: 14.sp,
                weight: ksixweight,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
