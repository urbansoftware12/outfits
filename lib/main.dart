import 'package:flutter/material.dart';
import 'package:widgets_book/widgets_book.dart';

import 'app_bloc_observer.dart';
import 'infrastructure/di/injectable.dart';
import 'menumaster_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  // await ScreenUtil.ensureScreenSize();
  registerServices();
  Bloc.observer = AppBlocObserver();
  runApp(
    const ScreenUtilSetup(
      child: MenuMasterApp(),
    ),
  );
}
