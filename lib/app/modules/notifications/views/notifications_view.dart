import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';

import '../../../../Widgets/appbars.dart';
import '../controllers/notifications_controller.dart';

int index = 0;

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: avatarLogoActionAppBar(),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          showAdaptiveActionSheet(
                            bottomSheetColor: Color(0xff242C30),
                            cancelAction: CancelAction(
                                title: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontWeight: ksixweight,
                                  fontSize: 14.sp,
                                  color: kwhiteColor),
                            )),
                            context: (context),
                            androidBorderRadius: 30,
                            actions: <BottomSheetAction>[
                              BottomSheetAction(
                                title: const Text(
                                  'All',
                                  style: TextStyle(color: kwhiteColor),
                                ),
                                onPressed: (context) {},
                              ),
                              BottomSheetAction(
                                title: const Text(
                                  'Unread only',
                                  style: TextStyle(color: kwhiteColor),
                                ),
                                onPressed: (context) {},
                              ),
                            ],
                          );
                        },
                        child: _notificationWidget());
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget _notificationWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 70.h,
      width: 375.w,
      color: index == 1
          ? Color(0xff182024)
          : index == 0
              ? Colors.transparent
              : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Notifications Title",
                size: 14.sp,
                weight: kfourweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 2.h,
              ),
              MyText(
                text: "Here’s notification text.",
                size: 14.sp,
                weight: kfourweight,
                color: Color(0xffCED0D1),
              ),
            ],
          ),
          MyText(
            text: "34m ago",
            size: 14.sp,
            weight: kfourweight,
            color: Color(0xffCED0D1),
          ),
        ],
      ),
    );
  }
}
