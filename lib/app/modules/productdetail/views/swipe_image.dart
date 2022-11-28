import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:snackbar/app/modules/productdetail/views/productdetail_view.dart';

import '../controllers/productdetail_controller.dart';

Widget SwipeImage() {
  return GetBuilder<ProductdetailController>(builder: (controller) {
    return Column(
      children: [
        Container(
          color: Color(0xffD6D6D6),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xffD6D6D6),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Color(0xffD6D6D6),
                  height: 320.h,
                  width: Get.width,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      controller.changeIndicator(index);
                    },
                    controller: PageController(viewportFraction: 0.9),
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        image[index],
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 30.h,
                color: Color(0xffD6D6D6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      image.length,
                      (index) => _indicator(
                        isActive:
                            controller.selectedIndex == index ? true : false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 30.h,
        //   color: Color(0xffD6D6D6),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ...List.generate(
        //         image.length,
        //         (index) => _indicator(
        //           isActive: controller.selectedIndex == index ? true : false,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  });
}

class _indicator extends StatelessWidget {
  final bool isActive;
  const _indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      height: 8.h,
      width: 8.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        color: isActive ? Colors.black : Color(0xffD6D6D6),
      ),
    );
  }
}
