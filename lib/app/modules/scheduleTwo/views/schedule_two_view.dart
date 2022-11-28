import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/app/modules/product/views/product_view.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/schedule_two_controller.dart';

ScheduleTwoController controller = Get.put(ScheduleTwoController());

class ScheduleTwoView extends GetView<ScheduleTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          child: backAppBar(title: 'Schedule'),
          preferredSize: Size.fromHeight(50.h),
        ),
        body: GetBuilder<ScheduleTwoController>(
          builder: (controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Pickup Schedule',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: 'Select Pickup date',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      height: 48.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: kwhiteColor),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextFormField(
                        controller: controller.pickUpDateController,
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/icons/date.svg",
                            ),
                          ),
                          hintText:
                              '${controller.dateTimeNow.month}--${controller.dateTimeNow.day}--${controller.dateTimeNow.year}',
                          hintStyle: TextStyle(
                              color: kwhiteColor.withOpacity(0.5),
                              fontSize: 12.sp,
                              fontWeight: kfourweight),
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kwhitegreBlackyColor),
                          ),
                        ),
                        style: TextStyle(
                          color: kwhitegreBlackyColor,
                          fontSize: 12.sp,
                          fontWeight: kfourweight,
                        ),
                        readOnly: true,
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext child) => SizedBox(
                              height: 250.h,
                              child: CupertinoTheme(
                                data: CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                    actionTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                    pickerTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                    dateTimePickerTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                  ),
                                ),
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  backgroundColor: Color(0xff242C30),
                                  initialDateTime: controller.dateTimeNow,
                                  onDateTimeChanged: (DateTime newtime) {
                                    controller.onChange(newtime);
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: 'Pickup Time Slot',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 48.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: kwhiteColor),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextFormField(
                        controller: controller.pickTimeController,
                        decoration: InputDecoration(
                          hintText: '${controller.hintGetText}',
                          hintStyle: TextStyle(
                              color: kwhiteColor.withOpacity(0.5),
                              fontSize: 12.sp,
                              fontWeight: kfourweight),
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kwhitegreBlackyColor),
                          ),
                        ),
                        style: TextStyle(
                          color: kwhitegreBlackyColor,
                          fontSize: 12.sp,
                          fontWeight: kfourweight,
                        ),
                        readOnly: true,
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          showModalBottomSheet(
                            context: (context),
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) myState) {
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 260.h,
                                    width: 375.w,
                                    color: kcontainer,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: "Select Slot",
                                          size: 16.sp,
                                          weight: ksixweight,
                                          color: kwhiteColor,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Expanded(
                                          flex: 13,
                                          child: GridView.count(
                                            crossAxisCount: 2,
                                            childAspectRatio: 6,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                            children: [
                                              ...List.generate(
                                                8,
                                                (index) => InkWell(
                                                  onTap: () {
                                                    myState(() {
                                                      controller
                                                          .changeContainerColor(
                                                              index);
                                                      controller
                                                          .changehintTextColor(
                                                              index);
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 32.h,
                                                    width: 160.w,
                                                    decoration: BoxDecoration(
                                                      color: controller
                                                                  .selectedIndex ==
                                                              index
                                                          ? kprimaryColor
                                                          : kcontainer,
                                                      border: Border.all(
                                                          color: kwhiteColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Center(
                                                      child: MyText(
                                                        text:
                                                            '${controller.timeSlots[index]}',
                                                        size: 12.sp,
                                                        weight: kfourweight,
                                                        color: controller
                                                                    .selectedIndex ==
                                                                index
                                                            ? Colors.black
                                                            : kwhiteColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: 'Delivery Schedule',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: 'Select delivery date',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      height: 48.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: kwhiteColor),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextFormField(
                        controller: controller.deliveryDateController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/icons/date.svg",
                            ),
                          ),
                          hintText:
                              '${controller.dateTime.month}--${controller.dateTime.day}--${controller.dateTime.year}',
                          hintStyle: TextStyle(
                              color: kwhiteColor.withOpacity(0.5),
                              fontSize: 12.sp,
                              fontWeight: kfourweight),
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kwhitegreBlackyColor),
                          ),
                        ),
                        style: TextStyle(
                          color: kwhitegreBlackyColor,
                          fontSize: 12.sp,
                          fontWeight: kfourweight,
                        ),
                        readOnly: true,
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext child) => SizedBox(
                              height: 250.h,
                              child: CupertinoTheme(
                                data: CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                    actionTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                    pickerTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                    dateTimePickerTextStyle: TextStyle(
                                        fontSize: 16, color: kwhiteColor),
                                  ),
                                ),
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  backgroundColor: kcontainer,
                                  initialDateTime: controller.dateTime,
                                  onDateTimeChanged: (DateTime newtime) {
                                    controller.onChangeTwo(newtime);
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    MyText(
                      text: 'Pickup Time Slot',
                      size: 16.sp,
                      weight: ksixweight,
                      color: kwhiteColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 48.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: kwhiteColor),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextFormField(
                        controller: controller.deliveryTimeController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '${controller.getHintText}',
                          hintStyle: TextStyle(
                              color: kwhiteColor.withOpacity(0.5),
                              fontSize: 12.sp,
                              fontWeight: kfourweight),
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kwhitegreBlackyColor),
                          ),
                        ),
                        style: TextStyle(
                          color: kwhitegreBlackyColor,
                          fontSize: 12.sp,
                          fontWeight: kfourweight,
                        ),
                        readOnly: true,
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          showModalBottomSheet(
                            context: (context),
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function())
                                        mySecondState) {
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 260.h,
                                    width: 375.w,
                                    color: kcontainer,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: "Select Slot",
                                          size: 16.sp,
                                          weight: ksixweight,
                                          color: kwhiteColor,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Expanded(
                                          flex: 13,
                                          child: GridView.count(
                                            crossAxisCount: 2,
                                            childAspectRatio: 6,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                            children: [
                                              ...List.generate(
                                                8,
                                                (index) => InkWell(
                                                  onTap: () {
                                                    mySecondState(() {
                                                      controller
                                                          .changeContainerColor(
                                                              index);
                                                      controller
                                                          .changehintTextColorTwo(
                                                              index);
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 32.h,
                                                    width: 160.w,
                                                    decoration: BoxDecoration(
                                                      color: controller
                                                                  .selectedIndex ==
                                                              index
                                                          ? kprimaryColor
                                                          : kcontainer,
                                                      border: Border.all(
                                                          color: kwhiteColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Center(
                                                      child: MyText(
                                                        text:
                                                            '${controller.timeSlots[index]}',
                                                        size: 12.sp,
                                                        weight: kfourweight,
                                                        color: controller
                                                                    .selectedIndex ==
                                                                index
                                                            ? Colors.black
                                                            : kwhiteColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              _bottomContainer()
            ],
          ),
        ));
  }
}

Widget _bottomContainer() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 92.h,
    width: double.infinity,
    color: kbackgroundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Total Price',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
              TextSpan(
                text: ' \$0.00',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: ksevenweight,
                  color: kwhiteColor,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.ORDERDETAILS);
          },
          child: Container(
            height: 42.h,
            width: 110.w,
            decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(36),
            ),
            child: Center(
              child: MyText(
                text: 'Continue',
                size: 14.sp,
                weight: ksixweight,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
