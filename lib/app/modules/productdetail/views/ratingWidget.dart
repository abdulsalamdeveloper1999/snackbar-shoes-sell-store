import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

class AuthenticDetailRatingContainer extends StatelessWidget {
  final avatarUri;
  final ratingstarUri;
  const AuthenticDetailRatingContainer({
    Key? key,
    required this.avatarUri,
    required this.ratingstarUri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11, bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kwhitegreBlackyColor.withOpacity(0.5),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "$avatarUri",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Samantha Payne",
                      size: 13.sp,
                      color: kwhiteColor,
                      weight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    MyText(
                      text: "@Sam.Payne90",
                      size: 11.sp,
                      weight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Color(0xff989898),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text:
                    "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint.",
                size: 11.sp,
                weight: FontWeight.w400,
                color: Color(0xff989898),
              ),
              SizedBox(
                height: 10.h,
              ),
              MyText(
                text: "Nov 23, 2021",
                size: 11.sp,
                weight: FontWeight.w400,
                fontFamily: 'Inter',
                color: Color(0xff989898),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
