import 'package:flutter/material.dart';
import 'package:outfits/application/login/login_bloc/login_bloc.dart';
import 'package:outfits/application/login/login_cubit/login_cubit.dart';
import 'package:outfits/infrastructure/services/navigation_service.dart';
import 'package:outfits/presentation/login/widgets/login_email_textfield.dart';
import 'package:widgets_book/widgets_book.dart';

import '../../infrastructure/di/injectable.dart';
import 'widgets/login_button.dart';
import 'widgets/login_dont_have_account.dart';
import 'widgets/login_forgot_password.dart';
import 'widgets/login_password_textfield.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.passwordTextEditingController,
    required this.emailTextEditingController,
    required this.formKey,
  }) : super(key: key);
  final TextEditingController passwordTextEditingController;
  final TextEditingController emailTextEditingController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state is LoginError) {
          getIt<Toasts>().showToast(context,
              type: AlertType.Error,
              title: AppLocalizations.of(context)!.messages_error,
              description: state.message,
              prefixWidget: Icon(
                Icons.close,
                size: 32.h,
                color: AppColors.accent,
              ));
        } else if (state is LoggedIn) {
          getIt<Toasts>().showToast(context,
              type: AlertType.Success,
              title: AppLocalizations.of(context)!.success_appbar_text,
              description: AppLocalizations.of(context)!.messages_logged_in,
              prefixWidget: Icon(
                Icons.check,
                size: 32.h,
                color: AppColors.greenDark,
              ));
          // getIt<NavigationService>().navigateToNamed(
          //   context: context,
          //   uri: NavigationService.homeRouteUri,
          // );
        }
      },
      child: BlocBuilder<LoginCubit, LoginCubitState>(
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LoginEmailTextField(
                  emailTextEditingController: emailTextEditingController,
                  isEmailValidated: state.isEmailValidated,
                ),
                19.verticalSpace,
                LoginPasswordTextField(
                  isPasswordObscureText: state.isPasswordObscureText,
                  isPasswordValidated: state.isPasswordValidated,
                  passwordTextEditingController: passwordTextEditingController,
                ),
                30.verticalSpace,
                LoginForgotPassword(
                    emailTextEditingController: emailTextEditingController),
                28.verticalSpace,
                LoginButton(
                  email: emailTextEditingController,
                  password: passwordTextEditingController,
                  formKey: formKey,
                ),
                28.verticalSpace,
                LoginDontHaveAccount(
                  onTap: () {
                    // getIt<NavigationService>().navigateToNamed(
                    //   context: context,
                    //   uri: NavigationService.signupRouteUri,
                    // );
                  },
                ),
              ],
            ),
            // ),
          );
        },
      ),
    );
  }
}
