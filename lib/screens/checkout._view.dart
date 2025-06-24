import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/cart_widget.dart';
import 'package:open_fashion/components/custom_appbar.dart';
import 'package:open_fashion/components/custom_button.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/components/promo.dart';
import 'package:open_fashion/components/header.dart';
import 'package:open_fashion/core/colors.dart';
import 'package:open_fashion/screens/place_order_view.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.descp,
  });
  final String image;
  final String name;
  final int price;
  final String descp;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  int selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Header(title: "Checkout"),

            CartWidget(
              image: widget.image,
              name: widget.name,
              descp: widget.descp,
              price: widget.price,
              qty: selectedQty,
              onChanged: (v) {
                setState(() {
                  selectedQty = v;
                });
              },
            ),

            promo(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Est. Total", color: AppColors.primary),
                CustomText(
                  text: "\$ ${widget.price * selectedQty}",
                  color: Colors.red.shade200,
                ),
              ],
            ),
            Gap(20),
            Button(
              isSvgg: true,
              title: "Checkout",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) {
                      return PlaceOrderView(
                        image: widget.image,
                        name: widget.name,
                        desp: widget.descp,
                        qty: selectedQty,
                        price: widget.price,
                        total: widget.price * selectedQty,
                      );
                    },
                  ),
                );
              },
            ),
            Gap(70),
          ],
        ),
      ),
    );
  }
}


