import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../../../Constants/constants.dart';
import 'intro_pages.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return onBackButtonPressed(context);
      },
      child: Scaffold(
        appBar: iconAppBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                height: 230.h,
                width: Get.width,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 0.9),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return IntroPage(
                      svgUri: images[index],
                      textTitle: textitles[index],
                      textDescrip: textDescrip[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    images.length,
                    (index) => _indicator(
                      isActive: _selectedIndex == index ? true : false,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 52.h,
              ),
              SizedBox(
                width: 335.w,
                child: MyButton(
                  height: 48.h,
                  text: "Get started",
                  textSize: 14.sp,
                  btnBgColor: kprimaryColor,
                  onPressed: () {
                    Get.toNamed(Routes.SIGNUP);
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SIGNIN);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an accoutn?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfourweight,
                          color: kwhiteColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign in',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfourweight,
                          color: kprimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _indicator extends StatelessWidget {
  final bool isActive;
  const _indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 8.h,
      width: 8.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? kprimaryColor : kgreyColor,
      ),
    );
  }
}

Future<bool> onBackButtonPressed(BuildContext context) async {
  bool exit = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Really?"),
        content: Text('Do you wnat to close app'),
        actions: [
          TextButton(
            onPressed: () {
              (Navigator.of(context).pop(false));
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: Text('yes'),
          ),
        ],
      );
    },
  );
  return exit ?? false;
}
