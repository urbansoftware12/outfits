import 'package:flutter/material.dart';
import 'package:outfits/application/login/login_cubit/login_cubit.dart';
import 'package:widgets_book/widgets_book.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({
    Key? key,
    required this.isPasswordValidated,
    required this.isPasswordObscureText,
    required this.passwordTextEditingController,
  }) : super(key: key);

  final bool isPasswordObscureText;
  final bool isPasswordValidated;
  final TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StandardText.subtitle3(
              AppLocalizations.of(context)!.signup_password.toUpperCase(),
              color: AppColors.gray,
              letterSpacing: 0.8,
            ),
            InkWell(
              onTap: () {
                bool isPasswordObscure =
                    context.read<LoginCubit>().state.isPasswordObscureText;
                if (isPasswordObscure) {
                  context.read<LoginCubit>().obscurePassword(false);
                } else {
                  context.read<LoginCubit>().obscurePassword(true);
                }
              },
              child: isPasswordObscureText
                  ? const Icon(
                      Icons.visibility_off,
                      color: AppColors.gray,
                      size: 15,
                    )
                  : const Icon(
                      Icons.visibility_rounded,
                      color: AppColors.gray,
                      size: 15,
                    ),
            ),
          ],
        ),
        4.verticalSpace,
        AppStandardTextField.outlined(
          controller: passwordTextEditingController,
          obscureText: isPasswordObscureText,
          obscuringCharacter: '*',
          validator: context.read<LoginCubit>().validatePassword,
          textInputAction: TextInputAction.done,
          suffixWidget: isPasswordValidated
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
