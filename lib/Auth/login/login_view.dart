import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../help/const.dart';
import '../register/register_view.dart';
import '../validetoer.dart';
import 'list_text_filed.dart';
import 'login_api.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final logAPI = LoginAPI();

  GlobalKey<FormState> formKey = GlobalKey();

  final formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'lib/assets/images/Mobile login (1).gif',
            height: 270,
            width: 260,
          ),
          Center(
            child: Text(
              "1".tr,
              style: const TextStyle(
                fontFamily: 'PTSerif-Regular',
                fontSize: 30,
                color: kFontColor,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTextField(
              formKey: formKey,
              phoneController: phoneController,
              formValidator: formValidator,
              passwordController: passwordController,
              logAPI: logAPI),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4".tr,
                style: const TextStyle(
                  fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                  fontSize: 16,
                  color: Color.fromARGB(255, 109, 108, 108),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(
                    RegisterView(),
                  );
                },
                child: Text(
                  "5".tr,
                  style: const TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 18,
                    color: kFontColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
