import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:repopharma_app/widgets/custom_elevated_Buttom.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 70,
        ),
        Center(
          child: Image.asset(
            'lib/assets/images/logo.png',
            height: 260,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        const Center(
          child: Text(
            'RepoPharma',
            style: TextStyle(
                fontFamily: 'Charm-Regular',
                fontSize: 40,
                color: Color(0xffFC9599)),
          ),
        ),
        const SizedBox(
          height: 110,
        ),
        CustomElevatedButton(
          text: "0".tr,
          getPage: '/LoginPage',
          width: 120,
        ),
      ]),
    );
  }
}
