import 'dart:io';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_flutter/shared/repository/base_repository.dart';
import 'package:meetup_flutter/shared/repository/dio_client.dart';

import 'shared/shared.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final router = RootRouter();
  late final String defaultLocale;
  late final Locale locale;
  late final ThemeData themeData;

  @override
  void initState() {
    super.initState();
    themeData = kIsWeb ? themeDataWeb : themeDataMobile;
    if (!kIsWeb) {
      defaultLocale = Platform.localeName;
      locale = Locale(defaultLocale.split('_')[0], '');
    } else {
      locale = Locale(ui.window.locale.languageCode, '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => BaseRepository(DioClient()),
      child: MaterialApp.router(
        theme: themeData,
        locale: locale,
        builder: null,
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
