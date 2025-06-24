import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/models/cover_model.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CoverModel.covers.length,
        itemBuilder: (context, index) {
          final item = CoverModel.covers[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  item.image,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Gap(10),
                CustomText(text: item.name.toUpperCase()),
              ],
            ),
          );
        },
      ),
    );
  }
}

