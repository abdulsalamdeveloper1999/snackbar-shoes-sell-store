import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/appbars.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../controllers/myorder_controller.dart';

class MyorderView extends GetView<MyorderController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
            text: "My Orders",
            size: 18.sp,
            weight: ksevenweight,
            color: kwhiteColor,
          ),
          bottom: TabBar(tabs: [
            Tab(text: 'Products'),
            Tab(text: 'Service'),
          ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 16.h),
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SERVICEORDERDETAILS);
                      },
                      child: _process(
                          pending: 'Processing Order', color: kblueColor)),
                  _process(pending: 'Ready for Shipping', color: kblueColor),
                  _process(pending: 'Completed', color: kgreenColor),
                  _process(pending: 'Completed', color: kgreenColor),
                  _process(pending: 'Cancel', color: kredColor),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 16.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.toNamed(Routes.SERVICEORDERTWO);
                        },
                        child: _process(
                            pending: 'Processing Order', color: kblueColor)),
                    _process(pending: 'Assessment', color: kblueColor),
                    _process(pending: 'Cleaning', color: kblueColor),
                    _process(pending: 'Restoration', color: kblueColor),
                    _process(pending: 'Finishing Touches', color: kblueColor),
                    _process(pending: 'Find Check', color: kblueColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _process({required var color, required String pending}) {
    return _container(
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Order ID #1036",
                  size: 14.sp,
                  weight: ksixweight,
                  color: kwhiteColor,
                ),
                SizedBox(
                  height: 4,
                ),
                MyText(
                  text: "Sept 26, 2022",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                ),
              ],
            ),
          ),
          FittedBox(
            child: MyText(
              text: "$pending",
              size: 12.sp,
              weight: kfourweight,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _container(var child) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kcontainer,
      ),
      child: child,
    );
  }
}
