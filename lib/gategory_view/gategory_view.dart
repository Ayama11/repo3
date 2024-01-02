import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

import 'package:repopharma_app/widgets/cards/card_Gategory.dart';
import 'package:repopharma_app/widgets/cards/gridview_home.dart';

import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';

import 'package:repopharma_app/widgets/header_home_view.dart/primary_header.dart';

import 'gategory_model.dart';
import 'gategory_service.dart';
import '../widgets/header_home_view.dart/searche_container.dart';

class GategoryView extends StatelessWidget {
  const GategoryView({super.key, this.textsearchController});

  final TextEditingController? textsearchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              height: 310,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  // TAppBar(),
                  AppBarW(
                    titel: Text(
                      "12".tr,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 24,
                          fontFamily: 'Charm-Regular'),
                    ),
                    backgroundColor: Colors.transparent,
                    actions: [
                      Builder(builder: (BuildContext context) {
                        return IconButton(
                          icon: const Icon(Iconsax.notification),
                          //menu_board
                          //menu_board5
                          color: Colors.white,
                          onPressed: () {},
                        );
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),

                  const SearcheContainer(
                    textsearche: 'Search in store',
                  ),
                  // SearchContainerTest(
                  //   textsearche: 'Search in store',
                  // ),
                ],
              ),
            ),
            Center(
              child: Text(
                "13".tr,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'JosefinSans-VariableFont_wght',
                    color: Color.fromARGB(255, 83, 83, 83)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: FutureBuilder<List<GategoryModel>>(
                future: CategoriesService().getCategoriesProduct(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<GategoryModel> products = snapshot.data!;

                    return GridViewhome(
                      crossAxisCount: 2,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, index) =>
                          CardGategory(
                        product: products[index],
                        categoryId: products[index].id,
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
