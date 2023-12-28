import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/views/navigetion_bottom/cart_view.dart';
import 'package:repopharma_app/views/navigetion_bottom/gategory_view.dart';
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
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart),
              //shop_add
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Favorite',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
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
    const CartView(),
    const FavoriteView(),
    const ProfileView(),
  ];
}
