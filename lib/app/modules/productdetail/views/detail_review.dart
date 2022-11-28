import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../Constants/constants.dart';

Widget ProductDetailReview() {
  return ReadMoreText(
    'Stop Buying New Shoes.\n\nYou Can Bring Your Pairs Back to Like New With Our Cleaning Solutions.\n\nSnkrr Bar Sole Food Oxidation Reversal Sauce Bottles\n\nThe MOST POWERFUL SOLE SAUCE GUARANTEED! For Professional Use ONLY! \n\nProfessional restorers trust OUR PRODUCTS to get amazing results every time\n\nSTOP DOING THIS:\nStop using sole sauces that don\'t get the desired results.\nStop using sole sauces that take forever to be effective.\nStop using sole sauces that waste your time.\n\nDon’t mess up your shoes using the wrong techniques on wrong the materials.  \nGet the best results with our simple step-by-step cleaning guides.\n\nGET MORE PAIRS BACK IN ROTATION\nThis solution reverses the yellow oxidation that most pairs become victims of.\n\nRock any pair you want knowing you can bring it back like new.\n\nMake your worn-in-white sneakers white again.  Use premium cleaning \nsolutions on the shoes you value.\n\nSNKRR BAR HELPS YOU GET THE BEST POSSIBLE RESULTS \n\nDeveloped, tested, and manufactured by sneaker experts. Our high-performance \nformula removes the most stubborn stains while leaving zero residue.\n\nWe have tutorial guides showing you how to properly care for different \nmaterialsFrom canvas, suede, and nubuck to leather and mesh.',
    trimLines: 2,
    colorClickableText: Colors.pink,
    trimMode: TrimMode.Line,
    trimCollapsedText: 'Show more',
    trimExpandedText: ' Show less',
    moreStyle: TextStyle(color: Colors.green),
    style: TextStyle(
        fontWeight: ksixweight, fontSize: 14.sp, color: kwhitegreBlackyColor),
    lessStyle: TextStyle(color: Colors.red),
  );
}
