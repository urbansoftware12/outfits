import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class LoginDontHaveAccount extends StatelessWidget {
  const LoginDontHaveAccount({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
          '${AppLocalizations.of(context)!.login_dont_have_account}  ',
          children: [
            TextSpan(
              text: AppLocalizations.of(context)!
                  .login_create_new_account,
              style: UITextStyle.subtitle2.copyWith(
                color: AppColors.accent,
                letterSpacing: -0.4,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = onTap,
            ),
          ],
          style: UITextStyle.subtitle2.copyWith(
            color: AppColors.textBlack60,
            letterSpacing: -0.4,
          ),
        ),
      ),
    );
  }
}