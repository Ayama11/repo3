// login_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../help/const.dart';
import '../login/login_view.dart';
import '../validetoer.dart';
import 'reg_list_text_filed.dart';
import 'register_api.dart';
import 'user_model.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final addressController = TextEditingController();

  final passwordController = TextEditingController();

  final userAPI = RegisterAPI();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Icon(
              Iconsax.user_edit,
              color: kFontColor,

              //Color.fromARGB(255, 109, 108, 108),
              size: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'PTSerif-Regular',
                        fontSize: 35,
                        color: kFontColor,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RegsTextFiled(
                        formKey: formKey,
                        nameController: nameController,
                        formValidator: formValidator,
                        phoneController: phoneController,
                        addressController: addressController,
                        passwordController: passwordController),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        backgroundColor: kBaseColor,
                        elevation: 5,
                        fixedSize: const Size(200, 53),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                        UserModel user = UserModel(
                          name: nameController.text,
                          phone: phoneController.text,
                          address: addressController.text,
                          password: passwordController.text,
                        );
                        userAPI.signUp(user);
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ? ',
                  style: TextStyle(
                    fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                    fontSize: 16,
                    color: Color.fromARGB(255, 109, 108, 108),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(LoginPage());
                  },
                  child: const Text(
                    'Login ',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 20,
                      color: kFontColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
