// user_api.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:repopharma_app/Auth/login/login_view.dart';
import 'package:repopharma_app/config/config_server.dart';
import 'dart:convert';

import '../token.dart';
import 'user_model.dart';

class RegisterAPI {
  Future<void> signUp(
    UserModel user,
  ) async {
    var response = await http.post(
      Uri.parse(
        ConfigServer.domainServer + ConfigServer.register,
      ),
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
        //  await TokenManager.saveToken('token');
        //  GlobalData.token = token;
        print('token is $token');
        Get.to(LoginPage());
      }
    } else if (response.statusCode == 422) {
      Get.defaultDialog(
          title: 'Erorr',
          titleStyle: const TextStyle(
            color: Colors.red,
          ),
          // title: 'error',
          middleText: 'phone number or name is already been taken');
    } else {
      Get.defaultDialog(title: 'error', middleText: ' data is error');
      print('reerro');
    }
  }
}
