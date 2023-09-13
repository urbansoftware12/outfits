import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class CategoryCircleAvatar extends StatelessWidget {
  const CategoryCircleAvatar({
    super.key,
    required this.imageUrl,
    this.padding,
    this.title,
    this.subtitle,
    this.radius,
  });

  final EdgeInsets? padding;
  final String imageUrl;
  final String? title;
  final String? subtitle;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8),
      // color: AppColors.paleSky,
      width: 105.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          15.verticalSpace,
          CircleAvatar(
            backgroundColor: AppColors.black,
            backgroundImage: NetworkImage(imageUrl),
            radius: radius ?? 30,
          ),
          10.verticalSpace,
          Flexible(
            child: StandardText.subtitle2(
              title ?? '-',
              maxLines: 1,
              align: TextAlign.center,
            ),
          ),
          if(subtitle!=null)
            Flexible(
              child: StandardText.subtitle3(
                subtitle ?? '-',
                maxLines: 1,
                align: TextAlign.center,
                color: AppColors.dullBlack,
              ),
            ),
        ],
      ),
    );
  }
}