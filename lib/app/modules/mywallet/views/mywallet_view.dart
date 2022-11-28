import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Widgets/appbars.dart';
import '../controllers/mywallet_controller.dart';
import 'build_list.dart';

List<String> svgs = [
  'assets/icons/applepay.svg',
  'assets/icons/visapay.svg',
  'assets/icons/masterpay.svg'
];

List<String> names = ['Apple Pay', 'Visa Pay', 'Master pay'];

MywalletController controller = Get.put(MywalletController());

class MywalletView extends GetView<MywalletController> {
  @override
  Widget build(BuildContext context) {
    controller.selectedIndex;
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(
          title: 'My Wallet',
        ),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "Cards",
                  size: 14.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ADDCRDEITCARD);
                  },
                  child: MyText(
                    text: "Add new Card",
                    size: 14.sp,
                    weight: ksixweight,
                    color: kprimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            ...buildList(),
          ],
        ),
      ),
    );
  }
}
