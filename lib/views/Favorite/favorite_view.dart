import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/views/Favorite/favorite_controller.dart';
import '../../widgets/header_home_view.dart/appbar.dart';

class FavoriteView extends StatelessWidget {
  FavoriteView({super.key});
  FavoriteController favcontroller = Get.put(FavoriteController());
  final String s = '\$';
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
            Padding(
              padding: const EdgeInsets.all(60),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var currentItem = favcontroller.favList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: const Color.fromARGB(255, 216, 220, 243),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(currentItem.commercialName),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                                '${'Price'.tr}: ${currentItem.price.toString()}$s'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: favcontroller.favList.length,
              ),
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

