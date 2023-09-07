import 'package:flutter/material.dart';
import 'package:outfits/infrastructure/di/injectable.dart';
import 'package:outfits/infrastructure/services/navigation_service.dart';
import 'package:widgets_book/widgets_book.dart';

import 'login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailTextEditingController =
        TextEditingController();
        // TextEditingController(text: 'devf09@gmail.com');
    passwordTextEditingController = TextEditingController();
    // passwordTextEditingController = TextEditingController(text: 'password');
    super.initState();
  }

  @override
  void dispose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StandardText.headline5(
            AppLocalizations.of(context)!.login_title),
        centerTitle: true,
        leadingWidth: 80,
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: () {
                  getIt<NavigationService>().navigateBack(
                    context: context,
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.accent,
                ),
              )
            : null,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.width,
          height: context.height - 80,
          padding: EdgeInsets.symmetric(
            horizontal: 28.w,
          ),
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                30.verticalSpace,
                StandardText.headline3(
                  AppLocalizations.of(context)!.login_title.toTitleCase(),
                ),
                25.verticalSpace,
                StandardText.subtitle2(
                  AppLocalizations.of(context)!
                      .login_enter_your_phone_number_or_email,
                  letterSpacing: -0.4,
                ),
                Container(
                  width: context.width,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: LoginForm(
                      formKey: _formKey,
                      emailTextEditingController: emailTextEditingController,
                      passwordTextEditingController:
                          passwordTextEditingController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
