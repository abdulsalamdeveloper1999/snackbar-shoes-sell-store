import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:snackbar/app/modules/productdetail/controllers/productdetail_controller.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

ProductdetailController _controller = Get.put(ProductdetailController());
Widget AddProductNumbers() {
  return Row(
    children: [
      Container(
        width: 60.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              child: InkWell(
                onTap: () {
                  _controller.decrement();
                },
                child: SvgPicture.asset(
                  'assets/icons/kprimaryremove.svg',
                  height: 15.h,
                  width: 15.w,
                ),
              ),
            ),
            FittedBox(
              child: Obx(
                () => MyText(
                  text: "${_controller.count}",
                  size: 14.sp,
                  weight: ksixweight,
                  color: kwhiteColor,
                ),
              ),
            ),
            FittedBox(
              child: InkWell(
                onTap: () {
                  _controller.increment();
                },
                child: SvgPicture.asset(
                  'assets/icons/positive.svg',
                  height: 15.h,
                  width: 15.w,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
