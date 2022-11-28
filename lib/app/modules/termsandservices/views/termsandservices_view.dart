import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:snackbar/Constants/constants.dart';
import 'package:snackbar/Widgets/my_text.dart';

import '../../../../Widgets/appbars.dart';
import '../controllers/termsandservices_controller.dart';

class TermsandservicesView extends GetView<TermsandservicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: backAppBar(title: 'Terms And Services'),
          preferredSize: Size.fromHeight(50.h),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                MyText(
                  text:
                      "Privacy Policies are required by law to be posted on your website. You may be required to include specific clauses in your Privacy Policy, depending on the applicable laws within your area or where you are conducting business.\n\nIn fact, privacy laws are in place in many countries around the globe, including the following:\n\nCanada's Personal Information Protection and Electronic Documents Act (PIPEDA)\n\nThe California Online Privacy Protection Act (CalOPPA)\nThe California Consumer Privacy Act (CCPA)\nEurope's General Data Protection Regulation (GDPR)\nAustralia's Privacy Act\nThe UK's Data Protection Act\nLoading...\nThird Party Services Require a Privacy Policy\nThird Party Services Require a Privacy Policy\n\nMany third-party services that you use to improve your website's user experience, monitor analytics, or display ads require you to post a Privacy Policy.\n\nYou should provide clauses detailing how you use third-party services, APIs and SDKs.\n\nJust some of the most popular third-party services, which require you to post a Privacy Policy are:\n\nGoogle Analytics\nGoogle AdSense\nGoogle AdWords\nAmazon Associates\nClickBank\nTwitter Lead Generation\nFacebook Pages, Stores and App\nGoogle Play Store\nApple's App Store\nA few of the reasons these third-party services require you to post a Privacy Policy and disclose your usage of their cookies and services are due to the fact that they place cookies on your visitors' computers. They also collect information about them whenever they visit your site, such as their browsing habits, the device used, and so on.",
                  size: 12.sp,
                  weight: kfourweight,
                  color: kwhiteColor,
                )
              ],
            ),
          ),
        ));
  }
}
