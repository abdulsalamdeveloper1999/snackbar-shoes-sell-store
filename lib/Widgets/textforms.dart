import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/constants.dart';
import 'login_field.dart';
import 'my_text.dart';

Widget ReuseTextFormField({
  required String label,
  required String hint,
  var validator,
  var controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        text: '$label',
        color: kwhiteColor,
        size: 14.sp,
        weight: kfiveweight,
      ),
      SizedBox(
        height: 8.h,
      ),
      SizedBox(
        child: LoginFields(
          fieldValidator: validator,
          hintText: '$hint',
          controller: controller,
        ),
      )
    ],
  );
}
