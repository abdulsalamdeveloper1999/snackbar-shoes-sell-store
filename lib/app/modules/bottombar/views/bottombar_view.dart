import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/app/modules/authentic/views/authentic_view.dart';
import 'package:snackbar/app/modules/notifications/views/notifications_view.dart';
import 'package:snackbar/app/modules/profile/views/profile_view.dart';
import 'package:snackbar/app/modules/service/views/service_view.dart';

import '../../introduction/views/introduction_view.dart';
import '../../product/views/product_view.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends StatefulWidget {
  @override
  _BottombarViewState createState() => _BottombarViewState();
}

class _BottombarViewState extends State<BottombarView> {
  int _selectedIndex = 0;
  List _widgetOptions = [
    ProductView(),
    ServiceView(),
    // AuthenticView(),
    NotificationsView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle unselectedLabelStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xffADADAD),
      fontWeight: FontWeight.w400,
      fontSize: 10.sp,
    );

    final TextStyle selectedLabelStyle = TextStyle(
      fontFamily: 'Poppins',
      color: kprimaryColor,
      fontWeight: FontWeight.w400,
      fontSize: 10.sp,
    );

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          return onBackButtonPressed(context);
        },
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: kwhiteColor,
          selectedItemColor: kprimaryColor,
          unselectedLabelStyle: unselectedLabelStyle,
          selectedLabelStyle: selectedLabelStyle,
          items: [
            bottombarItem(
              iconUri: "assets/icons/bproducts.svg",
              titleText: 'Products',
            ),
            bottombarItem(
              iconUri: "assets/icons/bservice.svg",
              titleText: 'Service',
            ),
            // bottombarItem(
            //     iconUri: 'assets/icons/bauthentic.svg', titleText: 'Authentic'),
            bottombarItem(
              iconUri: 'assets/icons/bnotification.svg',
              titleText: 'Notifications',
            ),
            bottombarItem(
              iconUri: 'assets/icons/bprofile.svg',
              titleText: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

// class BottombarView extends StatefulWidget {
//   const BottombarView({Key? key}) : super(key: key);
//
//   @override
//   State<BottombarView> createState() => _BottombarViewState();
// }
//
// class _BottombarViewState extends State<BottombarView> {
//   final TextStyle unselectedLabelStyle = TextStyle(
//     fontFamily: 'Poppins',
//     color: Color(0xffADADAD),
//     fontWeight: FontWeight.w400,
//     fontSize: 10.sp,
//   );
//
//   final TextStyle selectedLabelStyle = TextStyle(
//     fontFamily: 'Poppins',
//     color: kprimaryColor,
//     fontWeight: FontWeight.w400,
//     fontSize: 10.sp,
//   );
//
//   buildBottomNavigationMenu(context, landingPageController) {
//     return Obx(
//       () => BottomNavigationBar(
//         showUnselectedLabels: true,
//         showSelectedLabels: true,
//         onTap: landingPageController.changeTabIndex,
//         currentIndex: landingPageController.tabIndex.value,
//         unselectedItemColor: kwhiteColor,
//         selectedItemColor: kprimaryColor,
//         unselectedLabelStyle: unselectedLabelStyle,
//         selectedLabelStyle: selectedLabelStyle,
//         items: [
//           bottombarItem(
//               iconUri: "assets/icons/bproducts.svg", titleText: 'Products'),
//           bottombarItem(
//               iconUri: "assets/icons/bservice.svg", titleText: 'Service'),
//           bottombarItem(
//               iconUri: 'assets/icons/bauthentic.svg', titleText: 'Authentic'),
//           bottombarItem(
//               iconUri: 'assets/icons/bnotification.svg',
//               titleText: 'Notification'),
//           bottombarItem(
//               iconUri: 'assets/icons/bprofile.svg', titleText: 'Profile'),
//         ],
//       ),
//     );
//   }
//
bottombarItem({required String iconUri, required String titleText}) {
  return BottomNavigationBarItem(
    icon: Container(
      margin: EdgeInsets.only(bottom: 5),
      child: SvgPicture.asset(
        iconUri,
      ),
    ),
    label: titleText,
    backgroundColor: kbackgroundColor,
    activeIcon: SvgPicture.asset(
      iconUri,
      color: kprimaryColor,
    ),
  );
}
//
//   @override
//   Widget build(BuildContext context) {
//     final BottombarController landingPageController =
//         Get.put(BottombarController(), permanent: false);
//     return SafeArea(
//       child: WillPopScope(
//           child: Scaffold(
//             backgroundColor: Colors.transparent,
//             resizeToAvoidBottomInset: false,
//             bottomNavigationBar:
//                 buildBottomNavigationMenu(context, landingPageController),
//             body: Obx(
//               () => IndexedStack(
//                 index: landingPageController.tabIndex.value,
//                 children: [
//                   ProductView(),
//                   ServiceView(),
//                   AuthenticView(),
//                   NotificationsView(),
//                   ProfileView(),
//                 ],
//               ),
//             ),
//           ),
//           onWillPop: () async {
//             return onBackButtonPressed(context);
//           }),
//     );
//   }
// }

// class BottombarView extends GetView<BottombarController> {
//   final TextStyle unselectedLabelStyle = TextStyle(
//     fontFamily: 'Poppins',
//     color: Color(0xffADADAD),
//     fontWeight: FontWeight.w400,
//     fontSize: 10.sp,
//   );
//
//   final TextStyle selectedLabelStyle = TextStyle(
//     fontFamily: 'Poppins',
//     color: kprimaryColor,
//     fontWeight: FontWeight.w400,
//     fontSize: 10.sp,
//   );

// buildBottomNavigationMenu(context, landingPageController) {
//   return Obx(
//     () => BottomNavigationBar(
//       showUnselectedLabels: true,
//       showSelectedLabels: true,
//       onTap: landingPageController.changeTabIndex,
//       currentIndex: landingPageController.tabIndex.value,
//       unselectedItemColor: kwhiteColor,
//       selectedItemColor: kprimaryColor,
//       unselectedLabelStyle: unselectedLabelStyle,
//       selectedLabelStyle: selectedLabelStyle,
//       items: [
//         bottombarItem(
//             iconUri: "assets/icons/bproducts.svg", titleText: 'Products'),
//         bottombarItem(
//             iconUri: "assets/icons/bservice.svg", titleText: 'Service'),
//         bottombarItem(
//             iconUri: 'assets/icons/bauthentic.svg', titleText: 'Authentic'),
//         bottombarItem(
//             iconUri: 'assets/icons/bnotification.svg',
//             titleText: 'Notification'),
//         bottombarItem(
//             iconUri: 'assets/icons/bprofile.svg', titleText: 'Profile'),
//       ],
//     ),
//   );
// }
//
// bottombarItem({required String iconUri, required String titleText}) {
//   return BottomNavigationBarItem(
//     icon: Container(
//       child: SvgPicture.asset(
//         iconUri,
//       ),
//     ),
//     label: titleText,
//     backgroundColor: kbackgroundColor,
//     activeIcon: SvgPicture.asset(
//       iconUri,
//       color: kprimaryColor,
//     ),
//   );
// }
//
// @override
// Widget build(BuildContext context) {
//   final BottombarController landingPageController =
//       Get.put(BottombarController(), permanent: false);
//   return SafeArea(
//     child: WillPopScope(
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           resizeToAvoidBottomInset: false,
//           bottomNavigationBar:
//               buildBottomNavigationMenu(context, landingPageController),
//           body: Obx(
//             () => IndexedStack(
//               index: landingPageController.tabIndex.value,
//               children: [
//                 ProductView(),
//                 ServiceView(),
//                 AuthenticView(),
//                 NotificationsView(),
//                 ProfileView(),
//               ],
//             ),
//           ),
//         ),
//         onWillPop: () async {
//           return onBackButtonPressed(context);
//         }),
//   );
// }
//
//
