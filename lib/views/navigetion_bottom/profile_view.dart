import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/views/navigetion_bottom/list_profile_page.dart';

import '../../widgets/header_home_view.dart/appbar.dart';
import '../../widgets/header_home_view.dart/primary_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              height: 210,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  AppBarW(
                    coloricon: Colors.white,
                    showBackArrow: true,
                    titel: Text(
                      "17".tr,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 24,
                          fontFamily: 'Charm-Regular'),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ListProfile()
          ],
        ),
      ),
    );
  }
}
