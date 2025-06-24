import 'package:flutter/material.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/core/colors.dart';
import 'package:open_fashion/screens/checkout._view.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({
    super.key,
    required this.widget,
    required this.selectedQty,
  });

  final CheckoutView widget;
  final int selectedQty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: "Est. Total", color: AppColors.primary),
          CustomText(
            text: "\$ ${widget.price * selectedQty}",
            color: Colors.red.shade200,
          ),
        ],
      ),
    );
  }
}
