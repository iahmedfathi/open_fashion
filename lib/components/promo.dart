import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/core/colors.dart';

Widget promo() {
  return Column(
    children: [
      Gap(20),
      Divider(),
      Gap(20),
      Row(
        children: [
          SvgPicture.asset("assets/svgs/promo.svg", width: 28),
          Gap(20),
          CustomText(text: "ADD Promo Code", color: AppColors.primary),
        ],
      ),
      Gap(20),
      Divider(),
      Gap(20),
      Row(
        children: [
          SvgPicture.asset("assets/svgs/delivery.svg", width: 25),
          Gap(20),
          CustomText(text: "Delivery", color: AppColors.primary),
          Spacer(),
          CustomText(text: "FREE", color: AppColors.primary),
          Gap(5),
        ],
      ),
      Gap(10),
      Divider(),
    ],
  );
}