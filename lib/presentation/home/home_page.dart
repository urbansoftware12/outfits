import 'package:flutter/material.dart';
import 'package:outfits/presentation/home/widgets/home_appbar.dart';
import 'package:outfits/presentation/home/widgets/new_arrival_item.dart';
import 'package:outfits/presentation/home/widgets/special_offer_item.dart';
import 'package:outfits/presentation/home/widgets/trendy_item.dart';
import 'package:widgets_book/widgets_book.dart';

import 'widgets/category_circle_avatar_item.dart';
import 'widgets/more_list_tile.dart';

const String imageUrl = 'https://ychef.files.bbci.co.uk/976x549/p0g1kxgn.jpg';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(110),
      //   child: HomeAppBar(),
      // ),
      body: CustomScrollView(
        slivers: [
          // Appbar
          const HomeSliverAppBar(),
          // Top Categories List
          SliverToBoxAdapter(
            child: SizedBox(
              // color: AppColors.charcoal,
              height: context.height * .14,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryCircleAvatar(
                      imageUrl: imageUrl,
                      padding: EdgeInsets.only(
                        left: index == 0 ? 20.h : 0,
                        right: 20.h,
                      ),
                      title: index == 0
                          ? 'Go-Glow Glow'
                          : index == 1
                              ? 'Barbie'
                              : 'Baby Shop',
                    );
                  }),
            ),
          ),
          // Carousel Slider
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 20.h, bottom: 15.h),
              height: context.height * .25,
              decoration: const BoxDecoration(
                  color: AppColors.charcoal,
                  image: DecorationImage(
                      image: NetworkImage(
                        imageUrl,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CategoryCircleAvatar(
                  radius: 35,
                  imageUrl: imageUrl,
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 20.h,
                  ),
                  title: index == 0
                      ? 'Go-Glow Glow'
                      : index == 1
                          ? 'Barbie'
                          : 'Baby Shop',
                  subtitle: '0-3Y',
                );
              },
              childCount: 12,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: .74,
            ),
          ),
          const SliverToBoxAdapter(
            child: MoreListTile(
              title: 'New users’ special offer',
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 30.h,
              ),
              height: context.height * .177,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SpecialOfferItem(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 4,
                      right: 4,
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: MoreListTile(
              title: 'Trendy',
              isMore: false,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 30.h,
              ),
              height: context.height * .29,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TrendyItem(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 4,
                      right: 4,
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: MoreListTile(
              title: 'New Arrival',
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 30.h,
              ),
              height: context.height * .177,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return NewArrivalItem(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 4,
                      right: 4,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
