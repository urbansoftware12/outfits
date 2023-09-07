import 'package:flutter/material.dart';
import 'package:outfits/infrastructure/services/navigation_service.dart';
import 'package:widgets_book/widgets_book.dart';

import '../../../infrastructure/di/injectable.dart';

class LoginForgotPassword extends StatelessWidget {
  final TextEditingController emailTextEditingController;

  const LoginForgotPassword(
      {super.key, this.onTap, required this.emailTextEditingController});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // getIt<NavigationService>().pushNamed(
        //   context: context,
        //   uri: NavigationService.loginRouteUri,
        // );
      },
      child: Align(
        alignment: Alignment.center,
        child: Opacity(
          opacity: 0.64,
          child: StandardText.subtitle2(
            AppLocalizations.of(context)!.login_forgot_password,
            color: AppColors.gray,
            letterSpacing: -0.24,
          ),
        ),
      ),
    );
  }
}
