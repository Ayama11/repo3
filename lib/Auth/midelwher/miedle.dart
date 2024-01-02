import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/Auth/token.dart';

class AuthMedel extends GetMiddleware {
  final TokenManager tokenManager = TokenManager();

  @override
  RouteSettings? redirect(String? route) {
    return const RouteSettings(name: "/NavigationMuneBottom");
  }
}
