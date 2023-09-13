import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class TrendyItem extends StatelessWidget {
  const TrendyItem({Key? key, this.padding,}) : super(key: key);

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.paleSky,
      padding: padding ??
          const EdgeInsets.only(
            left: 4,
            right: 4,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://elitekids.com.pk/wp-content/uploads/2021/05/1812-2.jpeg',
              height: context.height * .29,
              width: 240.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
