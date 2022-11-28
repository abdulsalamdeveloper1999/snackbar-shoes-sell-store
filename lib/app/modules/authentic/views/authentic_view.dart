import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/appbars.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../product/controllers/product_controller.dart';
import '../controllers/authentic_controller.dart';

List<String> logos = [
  'assets/icons/nike.svg',
  'assets/icons/airjordan.svg',
  'assets/icons/yeezy.svg',
  'assets/icons/addidas.svg'
];

List<String> nikeImages = [
  'assets/icons/nikeRed.png',
  'assets/icons/nikeWhite.png'
];
AuthenticController controller = Get.put(AuthenticController());

class AuthenticView extends GetView<AuthenticController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = MediaQuery.of(context).size.width;
    print(width.toString());
    final double itemHeight = (size.height - kToolbarHeight - 130) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          backgroundColor: kprimaryColor,
          onPressed: () {
            Get.toNamed(Routes.MAKEAREQUEST);
          },
          child: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
        ),
      ),
      appBar: PreferredSize(
        child: avatarLogoActionAppBar(),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Featured Brands",
                size: 14.sp,
                weight: ksixweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              brands(),
              MyText(
                text: "History",
                size: 14.sp,
                weight: ksixweight,
                color: kwhiteColor,
              ),
              SizedBox(
                height: 8.h,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisSpacing: 10,
                children: [
                  ...List.generate(3, (index) {
                    return Container(
                      width: 159.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 2, top: 7, right: 2, bottom: 7),
                            height: 130.h,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/icons/nikeRed.png"),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 22.h,
                                width: width / 3.3,
                                decoration: BoxDecoration(
                                  color: kprimaryColor,
                                  borderRadius: BorderRadius.circular(39),
                                ),
                                child: Center(
                                  child: MyText(
                                    text: "AUTHENTICATE",
                                    size: 10.sp,
                                    weight: kfourweight,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Ref.#860370",
                                size: 12.sp,
                                weight: kfourweight,
                                color: kwhitegreBlackyColor,
                              ),
                              MyText(
                                text: "Yeezy",
                                size: 14.sp,
                                weight: ksixweight,
                                color: kwhiteColor,
                              ),
                              MyText(
                                text: "18 Oct 2022, 4:52 PM",
                                size: 10.sp,
                                weight: kfourweight,
                                color: kwhitegreBlackyColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                  ...List.generate(7, (index) {
                    return Container(
                      width: 159.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 2, top: 7, right: 2, bottom: 7),
                            height: 130.h,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/icons/nikeWhite.png"),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 22.h,
                                width: width / 3.5,
                                decoration: BoxDecoration(
                                  color: kredColor,
                                  borderRadius: BorderRadius.circular(39),
                                ),
                                child: Center(
                                  child: MyText(
                                    text: "Not Authentic",
                                    size: 10.sp,
                                    weight: kfourweight,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Ref.#860370",
                                size: 12.sp,
                                weight: kfourweight,
                                color: kwhitegreBlackyColor,
                              ),
                              MyText(
                                text: "Yeezy",
                                size: 14.sp,
                                weight: ksixweight,
                                color: kwhiteColor,
                              ),
                              MyText(
                                text: "18 Oct 2022, 4:52 PM",
                                size: 10.sp,
                                weight: kfourweight,
                                color: kwhitegreBlackyColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
          height: 70.h,
          width: 78.w,
          child: GetBuilder<ProductController>(
            builder: (controller) => ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                    catergory.length,
                    (index) => InkWell(
                          onTap: () {
                            controller.containerColor(index);

                            print('tapped' + index.toString());
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
          )),
    );
  }

  brands() {
    controller.selectedIndex;

    List<String> logos = [
      'assets/icons/nike.svg',
      'assets/icons/airjordan.svg',
      'assets/icons/yeezy.svg',
      'assets/icons/addidas.svg'
    ];
    return SingleChildScrollView(
      child: SizedBox(
        height: 100.h,
        child: GetBuilder<AuthenticController>(
            builder: (controller) => ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(
                        logos.length,
                        (index) => InkWell(
                              onTap: () {
                                controller.change(index);
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(right: 8, bottom: 24),
                                height: 70.h,
                                width: 78.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: kwhitegreBlackyColor),
                                  color: controller.selectedIndex == index
                                      ? kprimaryColor
                                      : Colors.black,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "${logos[index]}",
                                    color: controller.selectedIndex == index
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ))
                  ],
                )),
      ),
    );
  }

  _history() {
    List<String> nikeImages = [
      'assets/icons/nikeRed.png',
      'assets/icons/nikeWhite.png'
    ];

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.1,
        crossAxisSpacing: 10,
        children: [
          ...List.generate(3, (index) {
            return Container(
              width: 159.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 2, top: 7, right: 2, bottom: 7),
                    height: 130.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/icons/nikeRed.png"),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 22.h,
                        width: 62.w,
                        decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(39),
                        ),
                        child: Center(
                          child: MyText(
                            text: "Authentic",
                            size: 10.sp,
                            weight: kfourweight,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Ref.#860370",
                        size: 12.sp,
                        weight: kfourweight,
                        color: kwhitegreBlackyColor,
                      ),
                      MyText(
                        text: "Yeezy",
                        size: 14.sp,
                        weight: ksixweight,
                        color: kwhiteColor,
                      ),
                      MyText(
                        text: "18 Oct 2022, 4:52 PM",
                        size: 10.sp,
                        weight: kfourweight,
                        color: kwhitegreBlackyColor,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
          ...List.generate(7, (index) {
            return Container(
              width: 159.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 2, top: 7, right: 2, bottom: 7),
                    height: 130.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/icons/nikeWhite.png"),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 22.h,
                        width: 62.w,
                        decoration: BoxDecoration(
                          color: kredColor,
                          borderRadius: BorderRadius.circular(39),
                        ),
                        child: Center(
                          child: MyText(
                            text: "Not Authentic",
                            size: 10.sp,
                            weight: kfourweight,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Ref.#860370",
                        size: 12.sp,
                        weight: kfourweight,
                        color: kwhitegreBlackyColor,
                      ),
                      MyText(
                        text: "Yeezy",
                        size: 14.sp,
                        weight: ksixweight,
                        color: kwhiteColor,
                      ),
                      MyText(
                        text: "18 Oct 2022, 4:52 PM",
                        size: 10.sp,
                        weight: kfourweight,
                        color: kwhitegreBlackyColor,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
