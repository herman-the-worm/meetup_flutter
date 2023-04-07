import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../bloc/authentication_bloc/authentication_bloc.dart';
import '../repository/authentication_repository/authentication_repository.dart';

@Injectable()
class AuthGuard extends AutoRouteGuard {
  final AuthenticationBloc authBloc;
  StreamSubscription<AuthenticationState>? authBlocStateSubscription;
  static final String tokenKey = "AUTH_TOKEN";

  AuthGuard({required this.authBloc});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    authBlocStateSubscription = authBloc.stream.listen((state) async {
      print('authentication bloc status is');
      print(authBloc.state.status);
      if (authBloc.state.status == AuthenticationStatus.unknown ||
          state.status == AuthenticationStatus.unauthenticated) {
        router.root.pushNamed('/');
      }

      if (state.status == AuthenticationStatus.authenticated) {
        authBlocStateSubscription?.cancel();
        router.root.pushNamed('/home');
      }
    });
    resolver.next(true);
  }
}
