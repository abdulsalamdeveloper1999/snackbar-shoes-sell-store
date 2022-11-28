import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:snackbar/app/modules/productdetail/controllers/productdetail_controller.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/my_text.dart';

ProductdetailController _controller = Get.put(ProductdetailController());

Widget ProductDetailCheckBox() {
  return Row(
    children: [
      Obx(
        () => Checkbox(
          side: BorderSide(color: kprimaryColor),
          checkColor: kcontainer,
          focusColor: kprimaryColor,
          activeColor: kprimaryColor,
          hoverColor: kprimaryColor,
          value: _controller.checkBool.value,
          onChanged: (value) {
            _controller.checkBool.value = !_controller.checkBool.value;
          },
        ),
      ),
      MyText(
        text: "Add label printing",
        size: 14.sp,
        weight: kfourweight,
        color: kprimaryColor,
      )
    ],
  );
}
