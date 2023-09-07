import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({
    Key? key,
    required this.emailTextEditingController,
    required this.isEmailValidated,
  }) : super(key: key);

  final TextEditingController emailTextEditingController;
  final bool isEmailValidated;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StandardText.subtitle3(
          AppLocalizations.of(context)!.signup_email_address.toUpperCase(),
          color: AppColors.gray,
          letterSpacing: 0.8,
        ),
        4.verticalSpace,
        AppStandardTextField.outlined(
          controller: emailTextEditingController,
          suffixWidget: isEmailValidated
              ? const Icon(
                  Icons.check,
                  color: AppColors.accent,
                  size: 15,
                )
              : const Icon(
                  Icons.close,
                  color: AppColors.accent,
                  size: 15,
                ),
        ),
      ],
    );
  }
}
