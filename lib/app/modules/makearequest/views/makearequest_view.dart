import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Widgets/my_button.dart';
import 'package:snackbar/app/modules/makearequest/controllers/makearequest_controller.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/appbars.dart';
import '../../../../Widgets/my_text.dart';

MakearequestController controller = Get.put(MakearequestController());
List<String> productImageaList = [
  'assets/icons/mesxterior.svg',
  'assets/icons/minterrior.svg',
  'assets/icons/mheel.svg',
  'assets/icons/mheeloutside.svg',
  'assets/icons/minsidetop.svg',
  'assets/icons/mbackofinsole.svg',
  'assets/icons/msweing.svg',
  'assets/icons/minsidelabel.svg',
  'assets/icons/minsidelabel.svg',
  'assets/icons/minsidelabel.svg',
  'assets/icons/minsidelabel.svg',
];

List<String> productNames = [
  'Exterior Outer\n(Right)',
  'Exterior Inner\n(Right)',
  'Heel (Right)',
  'Outsight\n(Right)',
  'Insole Top\n(Right)',
  'Back of Insole\n(Right)',
  'Interior Sweing (Right)',
  'Inside Label\n(Right)',
  'Tongue Front\n(Right)',
  'Tongue Back\n(Right)',
  'Optional'
];

class MakearequestView extends GetView {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 20) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: PreferredSize(
        child: backAppBar(title: "Make a request"),
        preferredSize: Size.fromHeight(50.h),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
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
                text: "Product's Images",
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
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 4,
                children: [
                  ...List.generate(productNames.length, (index) {
                    return InkWell(
                      onTap: () {
                        showAdaptiveActionSheet(
                          bottomSheetColor: kcontainer,
                          context: context,
                          androidBorderRadius: 30,
                          actions: <BottomSheetAction>[
                            BottomSheetAction(
                                title: Text(
                                  'Camera',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: ksixweight,
                                      color: kwhiteColor),
                                ),
                                onPressed: (context) {}),
                            BottomSheetAction(
                                title: Text(
                                  'Album',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: ksixweight,
                                      color: kwhiteColor),
                                ),
                                onPressed: (context) {}),
                          ],
                          cancelAction: CancelAction(
                              title: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: ksixweight,
                                color: kwhiteColor),
                          )), // onPressed parameter is optional by default will dismiss the ActionSheet
                        );
                      },
                      child: Container(
                        height: 118.h,
                        width: 78.w,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(24),
                              height: 78.h,
                              width: 78.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: kwhitegreBlackyColor),
                              ),
                              child: SvgPicture.asset(
                                  "${productImageaList[index]}"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            MyText(
                              align: TextAlign.center,
                              text: "${productNames[index]}",
                              size: 10.sp,
                              weight: kfourweight,
                              color: kwhiteColor,
                            )
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              remarks(),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 48.h,
                width: Get.width,
                child: MyButton(
                  text: "Submit",
                  textSize: 14.sp,
                  btnBgColor: kprimaryColor,
                  textColor: Colors.black,
                  onPressed: () {
                    Get.toNamed(Routes.GREAT);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );

    _productImages() {}
  }

  remarks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Remarks",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: kfiveweight,
                  color: kwhiteColor,
                ),
              ),
              TextSpan(
                text: "(Optional)",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: kfourweight,
                  color: kwhiteColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(
            left: 8,
          ),
          height: 140.h,
          width: 335.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: kwhitegreBlackyColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            style: TextStyle(
              color: kwhitegreBlackyColor,
              fontSize: 12.sp,
              fontWeight: kfourweight,
            ),
            controller: controller.remarksController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Type here...',
              hintStyle: TextStyle(
                color: kwhitegreBlackyColor,
                fontSize: 12.sp,
                fontWeight: kfourweight,
              ),
            ),
          ),
        ),
      ],
    );
  }
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
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: GetBuilder<MakearequestController>(
        builder: (controller) => Row(
          children: [
            ...List.generate(
              4,
              (index) {
                return InkWell(
                  onTap: () {
                    controller.onchange(index);
                    print(controller.selectedIndex.toString());
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 8, bottom: 24),
                    height: 70.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kwhitegreBlackyColor),
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
                );
              },
            ),
          ],
        ),
      ));
}
