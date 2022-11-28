import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Constants/constants.dart';

Widget ProductDetailFAQ() {
  return Column(
    children: [
      ExpandablePanel(
        header: Text(
          'Is there a free trial available?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          'Yes, you can try us for free for 30 days. If you want, we’ll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(iconColor: kwhiteColor),
      ),
      ExpandablePanel(
        header: Text(
          'Can I change my plan later?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          '',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(iconColor: kwhiteColor),
      ),
      ExpandablePanel(
        header: Text(
          'What is your cancellation policy?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          '.',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(iconColor: kwhiteColor),
      ),
      ExpandablePanel(
        header: Text(
          'Can other info be added to an invoice?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          '',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(iconColor: kwhiteColor),
      ),
      ExpandablePanel(
        header: Text(
          'How does billing work?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          '',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(iconColor: kwhiteColor),
      ),
      ExpandablePanel(
        header: Text(
          'How do I change my account email?',
          style: TextStyle(
              color: kwhiteColor, fontWeight: ksixweight, fontSize: 14.sp),
        ),
        collapsed: Text(
          '',
          style: TextStyle(color: kwhiteColor),
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Divider(
          thickness: 1,
          color: kwhitegreBlackyColor.withOpacity(0.5),
        ),
        theme: ExpandableThemeData(
          iconColor: kwhiteColor,
        ),
      ),
    ],
  );
}
