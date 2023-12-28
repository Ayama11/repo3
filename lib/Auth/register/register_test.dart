// import 'dart:convert';
// import 'dart:developer';

// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:repopharma_app/Auth/register/register_controller.dart';
// import 'package:repopharma_app/config/config_server.dart';
// import '../../help/const.dart';
// import '../../widgets/custom_elevated_Buttom.dart';
// import '../../widgets/custom_text_Field.dart';
// import '../login_view.dart';
// import 'user_test.dart';

// class RegisterPage extends StatelessWidget {

//  Future signUp(
//       String name, String phone, String address, String password) async {
//     var response = await http.post(
//       Uri.parse('http://192.168.1.102:8000/api/register'),
//       body: <String, String>{
//         'name': name,
//         'phone_number': phone,
//         'password': password,
//         'address': address,
//       },
//       headers: <String, String>{
//         'Accept': 'application/json',
//       },
//     );
//     print("respons body is  ${response.body}");
//     print("respons is  ${response.statusCode}");

//     if (response.statusCode == 200) {
//       var jsRespons = jsonDecode(response.body);
//       var token = jsRespons['token'];
//       print('token is $token');
//     } else {
//       print('error');
//     }
//   }

//   final User user = User(name: '', phone: '', password: '', adsress: '');

//   GlobalKey<FormState> formKey = GlobalKey();

//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final addressController = TextEditingController();
//   final passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       body: Form(
//         key: formKey,
//         child: ListView(
//           children: [
//             const SizedBox(
//               height: 60,
//             ),
//             Image.asset(
//               'lib/assets/images/Security On-bro.png',
//               height: 1,
//             ),

//             const Icon(
//               Iconsax.user_edit,
//               color: kFontColor,

//               //Color.fromARGB(255, 109, 108, 108),
//               size: 100,
//             ),
//             //     const Icon(Iconsax.row_vertical),
//             const SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     const Text(
//                       'Register',
//                       style: TextStyle(
//                         fontFamily: 'PTSerif-Regular',
//                         fontSize: 35,
//                         color: kFontColor,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     CustomTextField(
//                       controller: nameController,
//                       onChanged: (data) {
//                         user.name = data;
//                       },
//                       typeKey: TextInputType.name,
//                       hintText: 'User name',
//                       icons: Icons.account_circle_outlined,
//                       //
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     CustomTextField(
//                       controller: phoneController,
//                       onChanged: (data) {
//                         user.phone = data;
//                       },
//                       hintText: 'E-Phone',
//                       icons: Icons.phone,
//                       typeKey: TextInputType.number,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     CustomTextField(
//                       controller: addressController,
//                       onChanged: (data) {
//                         user.adsress = data;
//                       },
//                       typeKey: TextInputType.text,
//                       hintText: 'Address',
//                       icons: Icons.location_on_outlined,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     CustomTextField(
//                       controller: passwordController,
//                       onChanged: (data) {
//                         user.password = data;
//                       },
//                       typeKey: TextInputType.visiblePassword,
//                       obscureText: true,
//                       hintText: 'Password',
//                       icons: Icons.lock_outline,
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     CustomElevatedButton(
//                       onPressed: () {
//                         signUp(
//                           nameController.text,
//                           phoneController.text,
//                           addressController.text,
//                           passwordController.text,
//                         );
//                       },
//                       text: 'Sign up',
//                       width: 200,
//                       getPage: '/LoginPage',
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Already have an account ? ',
//                   style: TextStyle(
//                     fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 109, 108, 108),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.off(LoginPage());
//                   },
//                   child: const Text(
//                     'Login ',
//                     style: TextStyle(
//                       fontFamily: 'PTSerif-Regular',
//                       fontSize: 20,
//                       color: kFontColor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
