import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class NewArrivalItem extends StatelessWidget {
  const NewArrivalItem({
    super.key,
    this.padding,
  });

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 133.h,
              width: 133.h,
              fit: BoxFit.cover,
            ),
          ),
          StandardText.headline6(
            '\$200   ',
            fontSize: 14.sp,
            fontWeight: AppFontWeight.medium,
          )
        ],
      ),
    );
  }
}
