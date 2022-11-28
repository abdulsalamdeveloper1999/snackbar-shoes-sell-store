import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import '../../../../Widgets/my_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/givefeedback_controller.dart';

class GivefeedbackView extends GetView<GivefeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          text: "Give feedback",
          size: 14.sp,
          color: kwhiteColor,
          weight: kfiveweight,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: MyText(
              text: "Skip",
              size: 14.sp,
              color: kprimaryColor,
              weight: ksixweight,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Rate this order",
                size: 14.sp,
                color: kwhiteColor,
                weight: kfiveweight,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 30,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              MyText(
                text: "Write a review",
                size: 14.sp,
                color: kwhiteColor,
                weight: kfiveweight,
              ),
              SizedBox(
                height: 10.h,
              ),
              _textField(),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                width: 335.w,
                child: MyButton(
                  height: 48.h,
                  text: "Send feedback",
                  textSize: 14.sp,
                  btnBgColor: kprimaryColor,
                  onPressed: () {
                    Get.toNamed(Routes.ORDERPLACEDSUCCESSFULLY);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _stars() {
    return GetBuilder<GivefeedbackController>(
      builder: (controller) => IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          controller.changeColor();
        },
        icon: Icon(
          Icons.star,
          color: controller.click ? kwhitegreBlackyColor : Color(0xffFFC000),
        ),
      ),
    );
  }
}

Widget _textField() {
  GivefeedbackController _controller = Get.put(GivefeedbackController());

  return Container(
    padding: EdgeInsets.only(left: 5),
    height: 140.h,
    width: 335.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: kwhitegreBlackyColor),
    ),
    child: TextFormField(
      controller: _controller.reviewController,
      style: TextStyle(
        color: kwhitegreBlackyColor,
        fontSize: 12.sp,
        fontWeight: kfourweight,
      ),
      decoration: InputDecoration(
        hintText: 'Type here...',
        hintStyle: TextStyle(
          color: kwhitegreBlackyColor,
          fontSize: 12.sp,
          fontWeight: kfourweight,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
