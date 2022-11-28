import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

List<String> images = [
  'assets/icons/page1.svg',
  'assets/icons/page2.svg',
  'assets/icons/page3.svg'
];
List<String> textitles = [
  'Schedule',
  'Stay Updated',
  'Pickup',
];
List<String> textDescrip = [
  'On your request our moustache man will be at your\ndoorstep in no time',
  'Nice clean washing everytime',
  'Delivery with in 72 hours and express\ndelivery on request'
];

class IntroPage extends StatelessWidget {
  final svgUri;
  final textTitle;
  final textDescrip;
  const IntroPage({
    Key? key,
    required this.svgUri,
    required this.textTitle,
    required this.textDescrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return Column(
      children: [
        SvgPicture.asset(
          "$svgUri",
        ),
        SizedBox(
          height: 16.h,
        ),
        MyText(
          text: "$textTitle",
          size: 18.sp,
          weight: ksevenweight,
          color: kwhiteColor,
        ),
        SizedBox(
          height: 8.h,
        ),
        MyText(
          text: "$textDescrip",
          size: 12.sp,
          weight: kfourweight,
          color: kwhiteColor,
          align: TextAlign.center,
        ),
      ],
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
      height: 8.h,
      width: 8.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? kprimaryColor : kgreyColor,
      ),
    );
  }
}
