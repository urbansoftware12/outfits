// ignore_for_file: always_specify_types, lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'package:widgets_book/widgets_book.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Assets.icons.noInternet.svg(
            width: 72.h,
            height: 72.h,
            fit: BoxFit.scaleDown,
          ),
          44.verticalGap,
          StandardText.headline3(
            AppLocalizations.of(context)!.common_no_internet.toUpperCase(),
            color: AppColors.textBlack80,
          ),
          12.verticalGap,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: StandardText.subtitle2(
              AppLocalizations.of(context)!.common_no_internet_description,
              fontSize: 14.sp,
              align: TextAlign.center,
              color: AppColors.textBlack50,
              height: 1.71,
              letterSpacing: -0.40,
            ),
          ),
          70.verticalSpace,
          AppButton.darkRed(
            onPressed: (){
              print('trying again');
            },
            child: StandardText.buttonLarge(
              AppLocalizations.of(context)!.common_try_again,
            ),
          ),
        ],
      ),
    );
  }
}
