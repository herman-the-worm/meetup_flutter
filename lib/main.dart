import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'shared/shared.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kReleaseMode) Bloc.observer = SimpleBlocObserver();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Translations.recordMissingKeys = false;
  // Translations.recordMissingTranslations = false;

  // Translations.missingTranslationCallback = (key, locale) =>
  //     print("There are no translations in '$locale' for '$key'.");
  // Translations.missingKeyCallback =
  //     (key, locale) => print("There are no keys in '$locale' for '$key'.");
  runApp(const MyApp());
}
