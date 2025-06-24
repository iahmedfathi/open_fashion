import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/screens/checkout._view.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ProductModel.products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
        childAspectRatio: 0.50,
      ),
      itemBuilder: (context, index) {
        final item = ProductModel.products[index];
        return GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (c) => CheckoutView(
                        image: item.image,
                        name: item.name,
                        price: item.price,
                        descp: item.description,
                      ),
                ),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.image),
              Gap(10),
              CustomText(text: item.name),
              CustomText(
                text: item.description,
                color: Colors.grey,
              ),
              Gap(9),
              CustomText(
                text: "\$ ${item.price.toString()}",
                color: Colors.red.shade200,
                size: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}

