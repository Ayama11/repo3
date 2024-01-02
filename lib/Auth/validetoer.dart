// form_validator.dart

import 'package:get/get.dart';

class FormValidator {
  validateName(nameController) {
    if (nameController.isEmpty) {
      return 'Please enter your name'.tr;
    } else if (nameController.length > 12) {
      return 'name must be 12 char';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty || !GetUtils.isPhoneNumber(value)) {
      return 'Please enter a valid phone number'.tr;
    } else if (value.length > 10 || value.length < 10) {
      return 'phone number must be 10 char'.tr;
    }

    return null;
  }

  String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your address'.tr;
    } else if (value.length > 30) {
      return 'address must be 30 char'.tr;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password'.tr;
    } else if (value.length < 8) {
      return 'password must be at least 8 char'.tr;
    } else if (value.length > 12) {
      return 'password must be more than 12 char'.tr;
    }

    return null;
  }
}
