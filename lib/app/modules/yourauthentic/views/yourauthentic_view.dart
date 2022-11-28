import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Widgets/appbars.dart';
import 'package:snackbar/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/yourauthentic_controller.dart';

class YourauthenticView extends GetView<YourauthenticController> {
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
            text: "Your Authentic",
            size: 18.sp,
            weight: ksevenweight,
            color: kwhiteColor,
          ),
          bottom: TabBar(
              indicatorColor: kprimaryColor,
              labelColor: kprimaryColor,
              unselectedLabelColor: kwhitegreBlackyColor,
              tabs: [
                Tab(text: 'Awaiting'),
                Tab(text: 'Checked'),
              ]),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 6),
          child: TabBarView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    height: 150.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kwhiteColor.withOpacity(0.18),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Result:",
                                size: 16.sp,
                                weight: ksixweight,
                                color: kwhiteColor,
                              ),
                              MyText(
                                text: "Ref.#202556565",
                                size: 14.sp,
                                weight: ksixweight,
                                color: kwhiteColor,
                              ),
                              MyText(
                                text: "Air Jordan",
                                size: 18.sp,
                                weight: ksevenweight,
                                color: kwhiteColor,
                              ),
                              MyText(
                                text: "Created at 18 Oct 2022, 9:18 PM",
                                size: 12.sp,
                                weight: ksixweight,
                                color: kwhitegreBlackyColor,
                              ),
                            ],
                          ),
                        ),
                        FittedBox(
                          child: MyText(
                            text: "PENDING",
                            size: 16.sp,
                            weight: ksixweight,
                            color: Color(0xffFFC000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  _checkedContainer(
                    result: 'Authentic',
                    color: kgreenColor,
                  ),
                  _checkedContainer(
                    result: 'Not Authentic',
                    color: kredColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _checkedContainer({required String result, required var color}) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.AUTHENTIC_DETAIL);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        height: 150.h,
        width: 335.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kwhiteColor.withOpacity(0.18),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Result:",
                    size: 16.sp,
                    weight: ksixweight,
                    color: kwhiteColor,
                  ),
                  MyText(
                    text: "Ref.#202556565",
                    size: 14.sp,
                    weight: ksixweight,
                    color: kwhiteColor,
                  ),
                  MyText(
                    text: "Air Jordan",
                    size: 18.sp,
                    weight: ksevenweight,
                    color: kwhiteColor,
                  ),
                  MyText(
                    text: "Created at 18 Oct 2022, 9:18 PM",
                    size: 12.sp,
                    weight: ksixweight,
                    color: kwhitegreBlackyColor,
                  ),
                ],
              ),
            ),
            FittedBox(
              child: MyText(
                text: "$result",
                size: 16.sp,
                weight: ksixweight,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
