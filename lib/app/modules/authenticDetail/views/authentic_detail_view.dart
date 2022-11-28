import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snackbar/Widgets/appbars.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';
import '../../productdetail/views/product_swip.dart';
import '../../productdetail/views/productdetail_view.dart';
import '../../productdetail/views/ratingWidget.dart';
import '../controllers/authentic_detail_controller.dart';

class AuthenticDetailView extends GetView<AuthenticDetailController> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: backAppBar(title: 'Details'),
          preferredSize: Size.fromHeight(50.h),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    height: 108.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kwhiteColor.withOpacity(0.18),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                )
                              ]),
                          MyText(
                            text: "Authentic",
                            size: 16.sp,
                            weight: ksixweight,
                            color: kgreenColor,
                          )
                        ])),
                SizedBox(height: 24.h),
                _productImage(),
                SizedBox(height: 50.h),
                MyText(
                  text: "Comments (3)",
                  size: 16.sp,
                  weight: ksixweight,
                  color: kprimaryColor,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return AuthenticDetailRatingContainer(
                        avatarUri: 'assets/icons/feedbackavatar.png',
                        ratingstarUri: '${stars[index]}',
                      );
                    }),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 48.h,
                  width: 335.w,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    style: kLoginFieldStyle,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: kwhitegreBlackyColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: kwhitegreBlackyColor,
                          ),
                        ),
                        hintText: 'Comment Here',
                        hintStyle: kLoginFieldStyle),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _productImage() {
    List<String> nikeImages = [
      'assets/icons/nikeOne.png',
      'assets/icons/nikeTwo.png'
    ];

    return GetBuilder<AuthenticDetailController>(builder: (controller) {
      return Column(
        children: [
          Container(
            height: 240.h,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffB3E140),
            ),
            child: PageView.builder(
              onPageChanged: (index) {
                controller.onChange(index);
              },
              controller: PageController(viewportFraction: 0.9),
              itemCount: nikeImages.length,
              itemBuilder: (context, index) {
                return Image.asset(nikeImages[index]);
              },
            ),
          ),
          Container(
            height: 30.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  image.length,
                  (index) => AuthenticIndicator(
                    isActive: controller.selectedIndex == index ? true : false,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
