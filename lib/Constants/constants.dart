import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

const Color kredColor = Color(0xffFF3131);
const Color kgreenColor = Color(0xff24D06C);
const Color kblueColor = Color(0xff2F80ED);
const Color kbackgroundColor = Color(0xff0C1419);
const Color kprimaryColor = Color(0xffCDFE00);
const Color kwhiteColor = Color(0xffF4F4F6);
const Color kgreyColor = Color(0xffB6B9BA);
const Color kwhitegreyColor = Color(0xff3D4347);
const Color kcontainer = Color(0xff182024);
const Color kwhitegreBlackyColor = Color(0xff85898C);
const Color kWarningBorderColor = Color(0xffEBBC2E);
const Color kSuccessBorderColor = Color(0xff33B469);
const Color kErrorBorderColor = Color(0xffED3A3A);
const Color kNormalBorderColor = Color(0xff85898C);

var krichTextStyleWhite = TextStyle(
  fontSize: 12.sp,
  fontWeight: kfourweight,
  color: kwhiteColor,
);

var krichTextStyleYellow = TextStyle(
  fontSize: 12.sp,
  fontWeight: kfourweight,
  color: kprimaryColor,
);

var kproductDetailWhiteStyle = TextStyle(
  color: kwhiteColor,
  fontSize: 16.sp,
  fontWeight: kfourweight,
  height: 1.5,
  letterSpacing: 3.0,
);

var kproductDetailGreyStyle = TextStyle(
  color: kwhiteColor,
  fontSize: 16.sp,
  fontWeight: ksixweight,
  height: 2,
  letterSpacing: 3.0,
);

var ksevenweight = FontWeight.w700;
var ksixweight = FontWeight.w600;
var kfiveweight = FontWeight.w500;
var kfourweight = FontWeight.w400;
var kthreeweight = FontWeight.w300;

var kLoginFieldStyle = TextStyle(
  color: kwhitegreBlackyColor,
  fontSize: 14.sp,
  fontWeight: kfourweight,
);

const padding = EdgeInsets.only(top: 10, left: 18);

var iconAppBar = AppBar(
  elevation: 0,
  title: SvgPicture.asset(
    'assets/icons/logo.svg',
    height: 50.h,
  ),
  centerTitle: true,
);

class InputStyling {
  static var inputEnableBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: kNormalBorderColor,
      width: 1.0,
    ),
  );

  static var inputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: kErrorBorderColor,
      width: 1.0,
    ),
  );

  static var inputWarningBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: kWarningBorderColor,
      width: 1.0,
    ),
  );

  static var inputSuccessBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: kSuccessBorderColor,
      width: 1.0,
    ),
  );
}
