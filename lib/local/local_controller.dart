import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleLang extends GetxController {
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);

    Get.updateLocale(locale);
  }
}
