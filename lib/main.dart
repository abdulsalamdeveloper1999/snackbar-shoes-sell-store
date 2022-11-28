import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      minTextAdapt: true,
      // splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                toolbarHeight: 48.h,
                backgroundColor: kbackgroundColor,
              ),
              scaffoldBackgroundColor: kbackgroundColor,
              primaryColor: kbackgroundColor,
              backgroundColor: kbackgroundColor,
              fontFamily: 'Poppins'),
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    ),
  );
}
