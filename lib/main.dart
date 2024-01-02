import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/cart/controller.dart';
import 'package:repopharma_app/local/local.dart';

import 'package:repopharma_app/views/logo.dart';
import 'package:repopharma_app/views/navigetion_bottom/profile_view.dart';
import 'package:repopharma_app/widgets/navigetion_mune.dart';

import 'Auth/login/login_view.dart';
import 'local/local_controller.dart';

void main() {
  runApp(const RepoPharma());
}

class RepoPharma extends StatelessWidget {
  const RepoPharma({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleLang());
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: LocaleTra(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/LoginPage", page: () => LoginPage()),
        GetPage(name: "/LogoPage", page: () => const LogoPage()),
        GetPage(
            name: "/NavigationMuneBottom",
            page: () => const NavigationMuneBottom()),
        GetPage(name: "/profile", page: () => const ProfileView()),
      ],
      home: const LogoPage(),
    );
  }
}
