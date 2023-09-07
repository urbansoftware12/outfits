import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets_book/src/helper/extensions/number_extensions.dart';
import 'package:widgets_book/src/widgets/standard_text.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.children,
    // if children is not null ==> no more arguement is needed
    this.title,
    this.description,
    this.footer,
  });
  final List<Widget>? children;
  final String? title;
  final String? description;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Dialog(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children ??
                [
                  if (title != null)
                    StandardText.headline4(
                      title!,
                    ),
                  Visibility(
                    visible: description!=null,
                    child: 12.verticalGap,
                  ),
                  if (description != null)
                    StandardText.body2(
                      description!,
                    ),
                  Visibility(
                    visible: footer!=null,
                    child: 12.verticalGap,
                  ),
                  if (footer != null) footer!,
                ],
          ),
        ),
      ),
    );
  }
}
