import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as l;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meetup_flutter/shared/repository/base_repository.dart';

import 'shared/shared.dart';

class AppInitialWidget extends StatelessWidget {
  const AppInitialWidget({Key? key}) : super(key: key);

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
  late final String defaultLocale;
  late final Locale locale;

  @override
  void initState() {
    super.initState();
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
      create: (context) => getIt.get<BaseRepository>(),
      child: MaterialApp.router(
        theme: themeData,
        localizationsDelegates: const [
          l.AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('es', "MX"),
          Locale('en', "US"),
        ],
        routerConfig: globalRouter,
      ),
    );
  }
}
