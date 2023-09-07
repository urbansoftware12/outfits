import 'package:flutter/material.dart';
import 'package:outfits/application/login/login_bloc/login_bloc.dart';
import 'package:outfits/domain/login/LoginRequest/login_request.dart';
import 'package:widgets_book/widgets_book.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.password,
    required this.email,
    required this.formKey,
  });

  final TextEditingController password;
  final TextEditingController email;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return (state is LoggingIn)
            ? AppButtonLoading()
            : AppButton.darkRed(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StandardText.buttonLarge(
                      AppLocalizations.of(context)!.login_sign_in.toUpperCase(),
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
                    LoginRequest loginRequest = LoginRequest(
                      email: email.text.trim(),
                      password: password.text,
                    );
                    context.read<LoginBloc>().add(
                          LoginUser(
                            loginRequest: loginRequest,
                          ),
                        );
                  }
                },
              );
      },
    );
  }
}
