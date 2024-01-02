import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalData {
  static String? token;
}

class TokenManager {
  static const String tokenKey = 'token';

  //save token

  static Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }

  // get token

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenKey);
  }

  // delete token
  static Future<void> deleteToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(tokenKey);
  }
}
