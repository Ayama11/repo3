// user_api.dart

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:repopharma_app/Auth/login/user_model_log.dart';
import 'package:repopharma_app/Auth/token.dart';
import 'package:repopharma_app/config/config_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../gategory_view/gategory_view.dart';
import '../../widgets/navigetion_mune.dart';

class LoginAPI {
  Future<void> logIn(LoginModel user) async {
    var response = await http.post(
      Uri.parse(ConfigServer.domainServer + ConfigServer.login),
      body: user.toJson(),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer',
      },
    );

    print("response body is ${response.body}");
    print("response is ${response.statusCode}");

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        var josenToken = jsonDecode(response.body);
        var token = josenToken[1];
        await TokenManager.saveToken(token);
        // SharedPreferences prefs = await SharedPreferences.getInstance();
        // prefs.setString('token', token);
        // GlobalData.token = token;
        print('token is :$token ');
        Get.to(const NavigationMuneBottom());
        // Get.to(
        //   const GategoryView(),
        // );
      } else if (response.statusCode == 400) {
        Get.defaultDialog(
            title: 'error',
            middleText: 'the information does not match our record');
      }
    } else {
      Get.defaultDialog(
          title: 'error', middleText: ' Phone number or password not correct');
      print('reerro');
    }
  }
}
