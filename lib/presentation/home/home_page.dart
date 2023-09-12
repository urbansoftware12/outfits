import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: StandardText.headline5(
              'LOGO',
            ),
          ),
          leadingWidth: context.width * .2,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
              ),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
              ),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
              ),
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
