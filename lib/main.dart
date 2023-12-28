import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:repopharma_app/views/logo.dart';
import 'package:repopharma_app/widgets/navigetion_mune.dart';

import 'Auth/login/login_view.dart';

void main() {
  runApp(const RepoPharma());
}

class RepoPharma extends StatelessWidget {
  const RepoPharma({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/LoginPage", page: () => LoginPage()),
        GetPage(name: "/LogoPage", page: () => const LogoPage()),
        GetPage(
            name: "/NavigationMuneBottom",
            page: () => const NavigationMuneBottom()),
        // GetPage(name: "/ForgetPassword", page: () => const ForgetPassword()),
      ],
      home: const LogoPage(),
    );
  }
}
