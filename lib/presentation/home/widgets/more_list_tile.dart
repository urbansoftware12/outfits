import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class MoreListTile extends StatelessWidget {
  const MoreListTile({
    Key? key,
    required this.title,
    this.isMore = true,
  }) : super(key: key);

  final String title;
  final bool isMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StandardText.headline4(
            title,
          ),
          if (isMore)
            Row(
              children: [
                StandardText.headline5(
                  'More',
                  fontWeight: AppFontWeight.medium,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                )
              ],
            )
        ],
      ),
    );
  }
}
