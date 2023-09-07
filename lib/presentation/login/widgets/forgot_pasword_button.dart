import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

class ForgotPaswordButton extends StatelessWidget {
  const ForgotPaswordButton({
    required this.email,
    required this.formKey,
  });

  final TextEditingController email;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return AppButton.darkRed(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StandardText.buttonLarge(
            AppLocalizations.of(context)!
                .reset_password_button_text
                .toUpperCase(),
          ),
          6.horizontalSpace,
          Assets.icons.arrowRight.svg(
            color: AppColors.white900,
          ),
        ],
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        if (formKey.currentState!.validate()) {
          //
        }
      },
    );
  }
}
