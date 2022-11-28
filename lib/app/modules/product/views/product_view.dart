import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../../../Widgets/appbars.dart';
import '../../introduction/views/introduction_view.dart';
import '../controllers/product_controller.dart';

int selectedIndex = -1;

ProductController controller = Get.put(ProductController());

class ProductView extends GetView {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 90) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(top: 8.0.h, left: 8.w),
          child: Image.asset(
            "assets/icons/avatar.png",
            height: 40.h,
            width: 40.w,
          ),
        ),
        toolbarHeight: 50.h,
        title: SvgPicture.asset(
          'assets/icons/logo.svg',
          height: 45.h,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: Badge(
              badgeColor: kprimaryColor,
              badgeContent: Text(
                '5',
                style: TextStyle(
                    fontSize: 8.sp,
                    color: Colors.black,
                    fontWeight: kfourweight),
              ),
              child: Icon(
                Icons.shopping_cart_checkout_outlined,
                color: kwhiteColor,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchField(),
              SizedBox(
                height: 30.h,
              ),
              _offerContainer(),
              SizedBox(
                height: 30.h,
              ),
              MyText(
                text: "Catergory",
                color: kwhiteColor,
                size: 14.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              _scrollContainer(),
              SizedBox(
                height: 16.h,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: (itemWidth / itemHeight),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  ...List.generate(10, (index) => _productContainer())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _offerContainer() {
    return Container(
      padding: EdgeInsets.only(top: 20.h, left: 10.w),
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      // height: 176.h,
      width: Get.width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "A workhorse built to help power",
                      size: 20.sp,
                      weight: ksevenweight,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    MyText(
                      overFlow: TextOverflow.ellipsis,
                      text: "30% OFF",
                      size: 14.sp,
                      weight: ksixweight,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.h),
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 30.h,
                      width: 82.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Center(
                        child: MyText(
                          text: "Explore",
                          size: 12.sp,
                          weight: kfiveweight,
                          color: kprimaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/icons/shoes.png",
                  height: 124.h,
                  width: 170.w,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _searchField() {
    return CupertinoSearchTextField(
      padding: EdgeInsets.only(left: 8, top: 20, bottom: 20),
      placeholder: 'Search here',
      placeholderStyle: TextStyle(
          color: kwhitegreBlackyColor,
          fontSize: 12.sp,
          fontWeight: kfourweight),
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Icon(
          Icons.search,
          color: kwhiteColor,
        ),
      ),
      style: TextStyle(
          color: kwhitegreBlackyColor,
          fontSize: 12.sp,
          fontWeight: kfourweight),
    );
  }

  Widget _productContainer() {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PRODUCTDETAIL);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        // width: Get.width,
        decoration: BoxDecoration(
          color: Color(0xff242C30),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 130.h,
                width: 130.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/cartshirt.png"),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 18.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(39),
                    ),
                    child: Center(
                      child: MyText(
                        text: "New",
                        size: 8.sp,
                        weight: kfiveweight,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            MyText(
              text: "Bounce Back Bundl\nPRO Regular Price",
              size: 12.sp,
              weight: kfiveweight,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$500',
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 16.sp,
                            fontWeight: ksixweight),
                      ),
                      TextSpan(
                        text: ' \$699',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: kwhiteColor,
                          fontSize: 10.sp,
                          fontWeight: kfourweight,
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/shoppingCart.svg",
                  height: 23.h,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

_scrollContainer() {
  controller.selectedIndex;

  List<String> catergory = [
    'All',
    'Platinum Package',
    'Cleaner',
    'Back shirt',
    'Chef apron'
  ];

  return SingleChildScrollView(
    child: SizedBox(
      height: 38.h,
      child: GetBuilder<ProductController>(
        builder: (controller) => ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...List.generate(
                catergory.length,
                (index) => InkWell(
                      onTap: () {
                        controller.containerColor(index);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 38.h,
                        decoration: BoxDecoration(
                          color: controller.selectedIndex == index
                              ? kprimaryColor
                              : kcontainer,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Center(
                          child: MyText(
                            text: "${catergory[index]}",
                            size: 12.sp,
                            weight: kfiveweight,
                            color: controller.selectedIndex == index
                                ? Colors.black
                                : kwhiteColor,
                          ),
                        ),
                      ),
                    ))
          ],
        ),
      ),
    ),
  );
}
