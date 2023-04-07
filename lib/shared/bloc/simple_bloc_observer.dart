import 'dart:developer';

import 'package:bloc/bloc.dart';

/// used for logging all bloc events, errors, and transitions
/// has to be instantiated at the top of the app
class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    //  print('${bloc.runtimeType} $change');
    log('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('${bloc.runtimeType} $error $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvent ${bloc.runtimeType} $event');
  }
}
