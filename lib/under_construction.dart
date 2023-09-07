import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class UnderConstruction extends StatelessWidget {
  const UnderConstruction({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: AppBar(
        // onDrawerPressed: Scaffold.of(context).openDrawer,
        // onNotificationPressed: () {},
        title: Text(title),
      ),
      body: Center(
        child: StandardText.headline4(
          'Page is under construction',
        ),
      ),
    );
  }
}
