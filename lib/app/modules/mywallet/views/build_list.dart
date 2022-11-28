import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

import '../controllers/mywallet_controller.dart';
import 'mywallet_view.dart';

List<Widget> buildList() {
  return List.generate(
    3,
    (index) => InkWell(onTap: () {
      controller.changeBorderColor(index);
    }, child: GetBuilder<MywalletController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(20),
          width: Get.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: controller.selectedIndex == index
                  ? kprimaryColor
                  : kwhiteColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("${svgs[index]}"),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "${names[index]}",
                        size: 14.sp,
                        weight: kfiveweight,
                        color: kwhiteColor,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      MyText(
                        text: "Default",
                        size: 14.sp,
                        weight: kfiveweight,
                        color: kwhitegreBlackyColor,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      controller.selectedIndex == index
                          ? MyText(
                              text: "Set as default",
                              size: 14.sp,
                              weight: kfiveweight,
                              color: kwhitegreBlackyColor,
                            )
                          : Text(''),
                    ],
                  )
                ],
              ),
              Container(
                height: 16.h,
                width: 16.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: controller.selectedIndex == index
                      ? kprimaryColor
                      : Colors.black,
                  border: Border.all(
                      color: controller.selectedIndex == index
                          ? kprimaryColor
                          : kwhiteColor),
                ),
              )
            ],
          ),
        );
      },
    )),
  );
}
