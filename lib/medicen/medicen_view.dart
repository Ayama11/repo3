import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/search/search_view.dart';

import 'package:repopharma_app/widgets/cards/custom_card.dart';
import 'package:repopharma_app/widgets/cards/gridview_home.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';

import '../widgets/header_home_view.dart/searche_container.dart';
import 'medicen_by_gat_service.dart';
import 'medicen_bygat_model.dart';

class Medicen extends StatelessWidget {
  const Medicen({
    super.key,
    required this.id,
    required this.comSearch,
  });
  final int id;
  final String comSearch;

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
                "18".tr,
                style: const TextStyle(
                    color: Colors.black, fontFamily: 'Charm-Regular'),
              ),
              backgroundColor: Colors.transparent,
              showBackArrow: true,
              actions: [
                Builder(builder: (BuildContext context) {
                  return IconButton(
                      icon: const Icon(
                        Iconsax.search_normal,
                        //bag_tick_24
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        // Get.offAll(const SearchView());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SearchView(
                                com: comSearch,
                              );
                            },
                          ),
                        );
                      });
                }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // SearchContainerTest(
            //   textsearche: 'Search in madicen',
            // ),

            // const SearcheContainer(textsearche: 'Search in madicen'),
            Padding(
              padding: const EdgeInsets.all(8),
              child: FutureBuilder<List<GategoryMedicenModel>>(
                future: MedicenCategoriesService().getCategoriesMedicen(id: id),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<GategoryMedicenModel> products = snapshot.data!;
                    return GridViewhome(
                      crossAxisCount: 2,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, index) => CustomCard(
                        product: products[index],
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
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
