import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';
import 'package:snackbar/app/modules/changepassword/views/changepassword_view.dart';
import 'package:snackbar/app/modules/editprofile/views/editprofile_view.dart';
import 'package:snackbar/app/modules/myorder/views/myorder_view.dart';
import 'package:snackbar/app/modules/mywallet/views/mywallet_view.dart';
import 'package:snackbar/app/modules/signin/views/signin_view.dart';
import 'package:snackbar/app/modules/yourauthentic/views/yourauthentic_view.dart';
import 'package:snackbar/app/routes/app_pages.dart';
import '../controllers/profile_controller.dart';

final pages = [
  EditprofileView(),
  MyorderView(),
  YourauthenticView(),
  MywalletView(),
  ChangepasswordView()
];

List<String> profileIcons = [
  'assets/icons/mprofile.svg',
  'assets/icons/mcart.svg',
  'assets/icons/mauthentic.svg',
  'assets/icons/mwallet.svg',
  'assets/icons/mlock.svg',
  '',
];

List<String> namesIcon = [
  'Edit Profile',
  'My Order',
  'Your Authentic',
  'My Wallet',
  'Password',
];
ProfileController _controller = Get.put(ProfileController());

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: kwhiteColor,
            ),
          ),
          title: MyText(
            text: "Profile",
            size: 18.sp,
            weight: ksevenweight,
            color: kwhiteColor,
          ),
          actions: [
            InkWell(
              onTap: () {
                // Get.offAndToNamed(Routes.SIGNIN);
              },
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, right: 8),
                child: MyText(
                  text: "Log out",
                  size: 18.sp,
                  weight: ksevenweight,
                  color: Color(0xffFF3131),
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              _profile(),
              SizedBox(
                height: 16,
              ),
              _menuContainer(),
              _Notificationcontainer(),
              SupportScreen()
            ],
          ),
        ));
  }

  Widget _profile() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/dp.png'),
        radius: 25,
      ),
      title: Transform.translate(
        offset: Offset(-6, -3),
        child: MyText(
          text: "Raju Mullah",
          size: 16.sp,
          weight: ksixweight,
          color: kwhiteColor,
        ),
      ),
      subtitle: Transform.translate(
        offset: Offset(-6, -4),
        child: MyText(
          text: "rajumullah100@gmail.com",
          size: 12.sp,
          weight: kfourweight,
          color: kwhitegreBlackyColor,
        ),
      ),
    );
  }

  Widget _menuContainer() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: namesIcon.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pages[index],
                  ));
            },
            child: Container(
              height: 56.h,
              width: 375.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('${profileIcons[index]}'),
                      SizedBox(
                        width: 12.w,
                      ),
                      MyText(
                        text: "${namesIcon[index]}",
                        size: 14.sp,
                        weight: kfourweight,
                        color: kwhiteColor,
                      )
                    ],
                  ),
                  SvgPicture.asset("assets/icons/forwardIcon.svg")
                ],
              ),
            ),
          );
        });
  }

  _Notificationcontainer() {
    return Container(
      height: 56.h,
      width: 375.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/bnotification.svg'),
              SizedBox(
                width: 12.w,
              ),
              MyText(
                text: "Notification",
                size: 14.sp,
                weight: kfourweight,
                color: kwhiteColor,
              )
            ],
          ),
          Obx(
            () => Switch(
                activeColor: Colors.black,
                hoverColor: kwhitegreyColor,
                activeTrackColor: kprimaryColor,
                onChanged: (val) => _controller.toggle(),
                value: _controller.on.value),
          )
        ],
      ),
    );
  }

  SupportScreen() {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.TERMSANDSERVICES);
      },
      child: Container(
        height: 56.h,
        width: 375.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/msupport.svg'),
                SizedBox(
                  width: 12.w,
                ),
                MyText(
                  text: "Support",
                  size: 14.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                )
              ],
            ),
            SvgPicture.asset("assets/icons/forwardIcon.svg")
          ],
        ),
      ),
    );
  }
}
