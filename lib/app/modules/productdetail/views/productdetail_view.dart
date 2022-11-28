import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/modules/productdetail/controllers/productdetail_controller.dart';
import 'package:snackbar/app/modules/productdetail/views/swipe_image.dart';
import 'CheckBox.dart';
import 'add_product_numbers.dart';
import 'bottom_container.dart';
import 'detail_review.dart';
import 'faq.dart';

List<String> image = ['assets/icons/shoes1.png', 'assets/icons/shoes2.png'];

List stars = [
  'assets/icons/rating2.svg',
  'assets/icons/rating3.svg',
  'assets/icons/rating4.svg',
  'assets/icons/rating5.svg',
  'assets/icons/rating6.svg',
  'assets/icons/rating4.svg',
  'assets/icons/rating5.svg',
];

class ProductDetailView extends GetView<ProductdetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwipeImage(),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _productName(),
                      SizedBox(
                        height: 8.h,
                      ),
                      AddProductNumbers(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ProductDetailCheckBox(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _rowTextSign(
                        text: 'Bottle Size',
                        icon: Icons.remove,
                      ),
                      MyText(
                        text: "8oz",
                        size: 14.sp,
                        weight: kfourweight,
                        color: kwhitegreyColor,
                      ),
                      Divider(
                        thickness: 1,
                        color: kwhitegreyColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      _rowTextSign(
                        text: 'Important',
                        icon: Icons.add,
                      ),
                      Divider(
                        thickness: 1,
                        color: kwhitegreyColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ProductDetailReview(),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          MyText(
                            text: "Frequently asked questions",
                            size: 16.sp,
                            weight: ksixweight,
                            color: kprimaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ProductDetailFAQ(),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyText(
                        text: "Feedback",
                        size: 16.sp,
                        weight: ksixweight,
                        color: kprimaryColor,
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return _RatingContainer(
                            avatarUri: 'assets/icons/feedbackavatar.png',
                            ratingstarUri: '${stars[index]}',
                          );
                        },
                      ),
                      ProductDetailbottomContainer()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _rowTextSign({required String text, required IconData icon}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      MyText(
        text: "$text",
        size: 14.sp,
        weight: ksixweight,
        color: kwhiteColor,
      ),
      Icon(
        icon,
        color: kwhiteColor,
      ),
    ],
  );
}

Widget _productName() {
  return MyText(
    text: "SOLE FOOD (OXIDATION REVERSAL\nSAUCE)",
    size: 18.sp,
    weight: ksevenweight,
    color: kwhiteColor,
  );
}

Widget ratingStar() {
  return RatingBar.builder(
    itemSize: 20,
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: Colors.amber,
      size: 10,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}

class _RatingContainer extends StatelessWidget {
  final avatarUri;
  final ratingstarUri;
  const _RatingContainer({
    Key? key,
    required this.avatarUri,
    required this.ratingstarUri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11, bottom: 10),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: "Van Nga",
                      size: 13.sp,
                      color: kwhiteColor,
                      weight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                    MyText(
                      text: "CyberFin Co. Ltd",
                      size: 11.sp,
                      weight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Color(0xff989898),
                    ),
                    ratingStar()
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          MyText(
            text:
                "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint.",
            size: 11.sp,
            weight: FontWeight.w400,
            color: Color(0xff989898),
          ),
        ],
      ),
    );
  }
}
