import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../validetoer.dart';

class RegsTextFiled extends StatelessWidget {
  const RegsTextFiled({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.formValidator,
    required this.phoneController,
    required this.addressController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final FormValidator formValidator;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                controller: nameController,
                validator: (valu) {
                  if (valu!.isEmpty) {
                    return "Please enter your name".tr;
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide:
                        const BorderSide(color: Color(0xffd6d9f1), width: 2.5),
                  ),
                  labelText: "8".tr,
                  prefixIcon: const Icon(Icons.account_circle_outlined),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: formValidator.validatePhone,
                keyboardType: TextInputType.number,
                controller: phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide:
                        const BorderSide(color: Color(0xffd6d9f1), width: 2.5),
                  ),
                  labelText: "2".tr,
                  prefixIcon: const Icon(
                    Icons.phone,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: formValidator.validateAddress,
                controller: addressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide:
                        const BorderSide(color: Color(0xffd6d9f1), width: 2.5),
                  ),
                  labelText: "9".tr,
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: formValidator.validatePassword,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(199),
                    borderSide:
                        const BorderSide(color: Color(0xffd6d9f1), width: 2.9),
                  ),
                  labelText: "3".tr,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              // CustomElevatedButton(
              //   text: 'Sign up',
              //   width: 100,
              //   //  getPage: '/LoginPage',
              //   onPressed: () {
              //     UserModel user = UserModel(
              //       name: nameController.text,
              //       phone: phoneController.text,
              //       address: addressController.text,
              //       password: passwordController.text,
              //     );
              //     userAPI.signUp(user);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
