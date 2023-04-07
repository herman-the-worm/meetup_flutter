import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../helpers/getit_service_locator.dart';
import 'authentication.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@Singleton()
class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    final result = await getIt.get<AppAuthentication>().isLoggedIn();
    if (result) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    final result =
        await getIt.get<AppAuthentication>().login(username, password);
    if (result) {
      _controller.add(AuthenticationStatus.authenticated);
    } else {
      _controller.add(AuthenticationStatus.unauthenticated);
    }
  }

  void logOut() async {
    await getIt.get<AppAuthentication>().logout();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
