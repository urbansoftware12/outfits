import 'package:flutter/material.dart';
import 'package:outfits/presentation/home/widgets/home_appbar.dart';
import 'package:widgets_book/widgets_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: HomeAppBar(),
      ),
      body: Center(
        child: StandardText.headline4(
          'Home',
        ),
      ),
    );
  }
}
