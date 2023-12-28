// login_view.dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  Future signUp(
      String name, String phone, String address, String password) async {
    var response = await http.post(
      Uri.parse('http://192.168.1.102:8000/api/register'),
      body: <String, String>{
        'name': name,
        'phone_number': phone,
        'password': password,
        'address': address,
      },
      headers: <String, String>{
        'Accept': 'application/json',
      },
    );
    print("respons body is  ${response.body}");
    print("respons is  ${response.statusCode}");

    if (response.statusCode == 200) {
      var jsRespons = jsonDecode(response.body);
      var token = jsRespons['token'];
      print('token is $token');
    } else {
      print('error');
    }
  }

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final fromkey = GlobalKey<FormState>();

  void loginUser() {
    // Write your login logic here, you can access the user fields using user.name, user.phone, etc.
  }
  String? name, phone, address, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 150,
                ),
                TextFormField(
                  //   validator: ,
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(199),
                      borderSide: const BorderSide(
                          color: Color(0xffd6d9f1), width: 2.5),
                    ),
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.ac_unit),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  onChanged: (value) {
                    setState(() {
                      phone = value;
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Phone'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: addressController,
                  onChanged: (value) {
                    setState(() {
                      address = value;
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Address'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    try {
                      signUp(
                        nameController.text,
                        phoneController.text,
                        addressController.text,
                        passwordController.text,
                      );
                    } on Exception {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('erore ')));
                      // TODO
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
