import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'shared/bloc/simple_bloc_observer.dart';
import 'shared/helpers/getit_service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kReleaseMode) Bloc.observer = SimpleBlocObserver();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configureDependencies();

  runApp(const AppInitialWidget());
}
