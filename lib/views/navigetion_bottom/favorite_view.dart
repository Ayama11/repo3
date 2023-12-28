import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              titel: const Text(
                ' Favorite',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Charm-Regular',
                    fontSize: 22),
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
          ],
        ),
      ), //body: const Center(child: Icon(Iconsax.shopping_cart)),

      // Center(child: Icon(Iconsax.heart),
    );
  }
}
