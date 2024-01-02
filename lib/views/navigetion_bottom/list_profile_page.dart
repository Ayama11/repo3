import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/Auth/login/login_view.dart';
import 'package:repopharma_app/local/local_controller.dart';

import '../../Auth/token.dart';
import '../../help/const.dart';
import '../../widgets/navigetion_mune.dart';

class ListProfile extends StatelessWidget {
  ListProfile({
    super.key,
  });
  LocaleLang controllerlan = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          ListTile(
            title: Text("24".tr),
            leading: const Icon(
              Iconsax.profile_circle5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {
              // Get.to( );
            },
          ),
          ListTile(
            title: Text('Change Language'.tr),
            leading: const Icon(
              Iconsax.language_square5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {
              Get.defaultDialog(
                titlePadding: const EdgeInsets.all(8),
                title: 'Change Language'.tr,
                titleStyle: const TextStyle(fontSize: 18),
                content: Container(),
                textConfirm: 'Arabic'.tr,
                textCancel: 'English'.tr,
                confirmTextColor: Colors.white,
                cancelTextColor: kBaseColor,
                buttonColor: kBaseColor,
                onCancel: () {
                  controllerlan.changeLang("en");
                },
                onConfirm: () {
                  controllerlan.changeLang("ar");
                },
              );
            },
          ),
          ListTile(
            title: Text("26".tr),
            leading: const Icon(
              Iconsax.moon5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("27".tr),
            leading: const Icon(
              Iconsax.info_circle5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("28".tr),
            leading: const Icon(
              Iconsax.logout_15,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {
              Get.defaultDialog(
                titlePadding: const EdgeInsets.all(8),
                title: "29".tr,
                titleStyle: const TextStyle(fontSize: 18),
                content: Container(),
                textConfirm: "31".tr,
                textCancel: "30".tr,
                confirmTextColor: Colors.white,
                cancelTextColor: kBaseColor,
                buttonColor: kBaseColor,
                onCancel: () {
                  Get.to(const NavigationMuneBottom());
                },
                onConfirm: () async {
                  await TokenManager.deleteToken();
                  Get.offAll(LoginPage());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
