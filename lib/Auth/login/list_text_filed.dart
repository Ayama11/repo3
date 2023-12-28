import 'package:flutter/material.dart';

import '../../help/const.dart';

import '../validetoer.dart';
import 'login_api.dart';
import 'user_model_log.dart';

class ListTextField extends StatelessWidget {
  const ListTextField({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.formValidator,
    required this.passwordController,
    required this.logAPI,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;
  final FormValidator formValidator;
  final TextEditingController passwordController;
  final LoginAPI logAPI;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: phoneController,
                validator: formValidator.validatePhone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide:
                        const BorderSide(color: Color(0xffd6d9f1), width: 2.5),
                  ),
                  labelText: 'Phone',
                  prefixIcon: const Icon(
                    Icons.phone,
                  ),
                ),
              ),
              // CustomTextField(
              //   onChanged: (data) {
              //     phone = data;
              //     print(phone);
              //   },
              //   hintText: 'E-Phone',
              //   typeKey: TextInputType.number,
              //   icons: Icons.phone,
              // ),
              const SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: passwordController,
                validator: formValidator.validatePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 210, 214, 241), width: 2.9),
                  ),
                  labelText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                ),
                obscureText: true,
              ),
              // CustomTextField(
              //   onChanged: (data) {
              //     password = data;
              //     print(password);
              //   },
              //   obscureText: true,
              //   typeKey: TextInputType.visiblePassword,
              //   hintText: 'Password',
              //   icons: Icons.lock_outline,
              // ),
              const SizedBox(
                height: 60,
              ),

              // CustomElevatedButton(
              //   getPage: '/NavigationMuneBottom',
              //   text: 'Sign in',
              //   width: 200,
              // ),

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
                  LoginModel user = LoginModel(
                    phone: phoneController.text,
                    password: passwordController.text,
                  );
                  logAPI.logIn(user);
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
