import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as l;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'shared/bloc/authentication_bloc/authentication_bloc.dart';
import 'shared/repository/base_repository.dart';
import 'shared/shared.dart';

class AppInitialWidget extends StatelessWidget {
  const AppInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AuthenticationBloc>(),
      child: AppView(),
    );
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
  var _router;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      defaultLocale = Platform.localeName;
      locale = Locale(defaultLocale.split('_')[0], '');
    } else {
      locale = Locale(ui.window.locale.languageCode, '');
    }
    _router = RootRouter();
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
        routerConfig: _router.config(),
      ),
    );
  }
}
