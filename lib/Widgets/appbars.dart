import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constants/constants.dart';
import 'my_text.dart';

Widget avatarLogoActionAppBar() {
  return SafeArea(
    child: AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8),
        child: Image.asset(
          "assets/icons/avatar.png",
          height: 40.h,
          width: 40.h,
        ),
      ),
      toolbarHeight: 50.h,
      title: SvgPicture.asset(
        'assets/icons/logo.svg',
        height: 45.h,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10, top: 10),
          child: Badge(
            badgeColor: kprimaryColor,
            badgeContent: Text(
              '5',
              style: TextStyle(
                  fontSize: 8.sp, color: Colors.black, fontWeight: kfourweight),
            ),
            child: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: kwhiteColor,
            ),
          ),
        ),
      ],
      centerTitle: true,
    ),
  );
}

Widget backAppBar({required String title}) {
  return AppBar(
    elevation: 0,
    toolbarHeight: 50.h,
    automaticallyImplyLeading: false,
    centerTitle: true,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: kwhiteColor,
        )),
    title: MyText(
      text: "$title",
      size: 18.sp,
      weight: ksevenweight,
      color: kwhiteColor,
    ),
  );
}

Widget textAppBar({required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: MyText(
      text: "$title",
      size: 14.sp,
      weight: ksixweight,
      color: kprimaryColor,
    ),
  );
}
