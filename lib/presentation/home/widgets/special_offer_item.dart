import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({
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
            child: Stack(
              children: [
                Image.network(
                  'https://elitekids.com.pk/wp-content/uploads/2021/05/1812-2.jpeg',
                  height: 133.h,
                  width: 133.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 14,
                  left: 0,
                  child: Container(
                    width: 34.h,
                    height: 16.h,
                    decoration: const BoxDecoration(
                      color: AppColors.redWine,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: StandardText.subtitle3(
                      '-50%',
                      color: AppColors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              StandardText.headline6(
                '\$200   ',
                fontSize: 14.sp,
                fontWeight: AppFontWeight.medium,
                color: AppColors.redWine,
              ),
              StandardText.headline4(
                '\$250',
                fontSize: 12.sp,
                fontWeight: AppFontWeight.medium,
                decoration: TextDecoration.lineThrough,
                color: AppColors.textBlack,
              ),
            ],
          )
        ],
      ),
    );
  }
}
