// user_api.dart

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:repopharma_app/Auth/login/user_model_log.dart';
import 'package:repopharma_app/config/config_server.dart';
import 'dart:convert';

import '../../widgets/navigetion_mune.dart';

class LoginAPI {
  Future<void> logIn(LoginModel user) async {
    var response = await http.post(
      Uri.parse(ConfigServer.domainServer + ConfigServer.login),
      body: user.toJson(),
      headers: {'Accept': 'application/json'},
    );

    print("response body is ${response.body}");
    print("response is ${response.statusCode}");

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        //  var token = jsonResponse['token'];
        //  print('token is $token');
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
