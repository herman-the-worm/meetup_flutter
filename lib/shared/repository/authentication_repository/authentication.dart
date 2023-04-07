import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../helpers/getit_service_locator.dart';

class LoginFailedException implements Exception {}

@Singleton()
class AppAuthentication {
  static AppAuthentication get instance => getIt.get();

  static const String tokenKey = "AUTH_TOKEN";

  String? get token {
    var box = Hive.box('token');
    return box.get(0);
  }

  Future<bool> login(String email, String password) async {
    return true;
    // try {
    //   final response = await http.post(Uri.parse('$url/login'),
    //       body: {"email": email, "password": password});
    //   // if (response.statusCode == 200) {
    //   //   Token token = Token.fromJson(jsonDecode(response.body));
    //   //   User user = User.fromJson(jsonDecode(response.body));
    //   //   print("here here");
    //   //
    //   //   var box = Hive.box('token');
    //   //   var box1 = Hive.box('user');
    //   //   print(user.user);
    //   //   box1.put(0, user.user);
    //   //   box.put(0, token.token);
    //   //
    //   //   await getUser();
    //
    //     return true;
    //   }
    //   return false;
    // } catch (e) {
    //   print(e);
    //   throw LoginFailedException();
    // } finally {
    //   print('here');
    // }
  }

  Future<bool> isLoggedIn() async {
    // var token;
    //
    // print('running on the web');
    // var box = Hive.box('token');
    // token = box.get(0);
    //
    // if (token != null && token != "") {
    //   return true;
    // }
    return false;
  }

  Future<void> logout() async {
    // await Hive.box('token').clear();
  }

  Future<void> getUser() async {
    String token;

    // var box = Hive.box('token');
    // token = box.get(0);

    // final response = await http.get(Uri.parse('$url/user_info'), headers: {
    //   HttpHeaders.authorizationHeader: 'Token $token',
    // });
    //
    // if (response.statusCode == 200) {
    //   var box = Hive.box('user');
    //   box.put(0, jsonDecode(response.body));
    // }
  }
}
