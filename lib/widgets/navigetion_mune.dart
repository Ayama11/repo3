import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/cart/cart_view.dart';
import 'package:repopharma_app/gategory_view/gategory_view.dart';
import 'package:repopharma_app/views/navigetion_bottom/favorite_view.dart';

import 'package:repopharma_app/views/navigetion_bottom/profile_view.dart';

class NavigationMuneBottom extends StatelessWidget {
  const NavigationMuneBottom({super.key});
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          height: 65,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: const Icon(Iconsax.home),
              label: "14".tr,
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.shopping_cart),
              //shop_add
              label: "15".tr,
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.heart),
              label: "16".tr,
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.user),
              label: "17".tr,
            ),
          ],
        ),
      ),
      body: Obx(() => controller.viewScreen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final viewScreen = [
    const GategoryView(),
    CartView(),
    const FavoriteView(),
    const ProfileView(),
  ];
}
