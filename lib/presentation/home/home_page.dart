import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: StandardText.headline5(
              'L O G O',
            ),
          ),
          leadingWidth: context.width * .25,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Assets.icons.notification.svg(),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Assets.icons.tracking.svg(),
              iconSize: 20,
            ),
          ],
          elevation: 1,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical:6,horizontal: 12),
              child: StandardTextField.outlined(
                hintText: 'Search for products',
                suffixWidget: Assets.icons.search.svg(
                  width: 15.h,
                  height: 15.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: StandardText.headline4(
          'Home',
        ),
      ),
    );
  }
}
