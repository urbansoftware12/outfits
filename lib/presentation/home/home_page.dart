import 'package:flutter/material.dart';
import 'package:outfits/presentation/home/widgets/home_appbar.dart';
import 'package:widgets_book/widgets_book.dart';

const String imageUrl = 'https://ychef.files.bbci.co.uk/976x549/p0g1kxgn.jpg';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: HomeAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 8.h : 0, right: 8.h),
                      child: Column(
                        children: [
                          15.verticalSpace,
                          CircleAvatar(
                            backgroundColor: AppColors.black,
                            backgroundImage: NetworkImage(imageUrl),
                            radius: 30,
                          ),
                          StandardText.subtitle2(
                            'Go-Glow',
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //   childCount: 9,
          //   (context, index) {
          //     return CircleAvatar(
          //       backgroundColor: AppColors.black,
          //     );
          //   },
          // ))
        ],
      ),
    );
  }
}
