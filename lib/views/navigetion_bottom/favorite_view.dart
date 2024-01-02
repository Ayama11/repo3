import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/header_home_view.dart/appbar.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AppBarW(
              titel: Text(
                "16".tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Charm-Regular',
                  //   fontSize: 20
                ),
              ),
              backgroundColor: Colors.transparent,
              showBackArrow: true,
              actions: [
                Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  );
                })
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
            ),
          ],
        ),
      ), //body: const Center(child: Icon(Iconsax.shopping_cart)),

      // Center(child: Icon(Iconsax.heart),
    );
  }
}
/*
// عرض الأدوية المفضلة في واجهة المفضلة
Future<List<String>> getFavorites() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> favorites = prefs.getStringList('favorites') ?? [];
  return favorites;
}




*/ 