import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/components/custom_text.dart';

Widget about() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Ionicons.logo_twitter, color: Colors.white),
          Gap(30),
          Icon(Ionicons.logo_instagram, color: Colors.white),
          Gap(30),
          Icon(Ionicons.logo_facebook, color: Colors.white),
        ],
      ),
      Gap(20),
      Image.asset("assets/svgs/line.png", width: 190),
      Gap(20),
      CustomText(
        max: 3,
        height: 2.5,
        text:
            "support@openui.design \n       +60 825 876 \n08:00 - 22:00 - Everyday",
      ),
      Gap(20),
      Image.asset("assets/svgs/line.png", width: 190),
      Gap(20),
      CustomText(max: 3, height: 2.5, text: "About   Contact    Blog"),
    ],
  );
}
