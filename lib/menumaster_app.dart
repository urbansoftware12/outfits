// ignore_for_file: always_specify_types

import 'dart:async';
import 'dart:ui' as ui;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outfits/presentation/delegates/user_app_routes.dart';
import 'package:widgets_book/widgets_book.dart';

import 'presentation/intenet_connection/no_connection.dart';

class MenuMasterApp extends StatefulWidget {
  const MenuMasterApp({Key? key}) : super(key: key);

  @override
  State<MenuMasterApp> createState() => _MenuMasterAppState();
}

class _MenuMasterAppState extends State<MenuMasterApp> {
  late Connectivity _connectivity;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final _networkNotifier = ValueNotifier(false);

  @override
  void dispose() {
    _networkNotifier.dispose();
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  void initState() {
    _initNetwork();
    SharedPreferenceHelper.instance.init();

    super.initState();

    initRepositories();
  }

  _initNetwork() {
    _connectivity = Connectivity();
    initConnectivity();
    listenNetworkState();
  }

  listenNetworkState() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) async {
      if (event == ConnectivityResult.none) {
        _networkNotifier.value = true;
      } else {
        ConnectivityResult result = await _connectivity.checkConnectivity();
        if (result == ConnectivityResult.none) {
          _networkNotifier.value = true;
        } else {
          _networkNotifier.value = false;
        }
      }
    });
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException {
      await _updateConnectionStatus(ConnectivityResult.none);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    if (result == ConnectivityResult.none) {
      _networkNotifier.value = true;
    } else {
      _networkNotifier.value = false;
    }
  }

  initRepositories() {
    //
  }

  @override
  Widget build(BuildContext context) {
    return _MenuMasterApp(
      theme: AppTheme.themeData,
      networkNotifier: _networkNotifier,
    );
  }
}

class _MenuMasterApp extends StatelessWidget {
  const _MenuMasterApp({
    Key? key,
    required this.theme,
    required this.networkNotifier,
  }) : super(key: key);
  final ValueNotifier networkNotifier;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: UserAppRoutes.instance.goRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (BuildContext buildContext, Widget? child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark.copyWith(
            systemNavigationBarColor: AppColors.primary,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          child: ScreenUtilSetup(
            child: Directionality(
              textDirection: ui.TextDirection.ltr,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1,
                ),
                child: Stack(
                  children: [
                    child ?? Container(),
                    ValueListenableBuilder(
                      valueListenable: networkNotifier,
                      builder: (context, value, state) {
                        return value ? const NoConnection() : Container();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      theme: theme,
    );
  }
}
