import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/search/custom_search.dart';
import 'package:repopharma_app/search/search_model.dart';
import 'package:repopharma_app/search/search_service.dart';
import 'package:repopharma_app/widgets/cards/gridview_home.dart';

class Test extends StatelessWidget {
  Test({super.key, required this.com});
  String com;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Results'.tr,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Iconsax.arrow_left_3),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: FutureBuilder<List<SearchMedicenModel>>(
                  future: SearchService().search(com: com),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<SearchMedicenModel> products = snapshot.data!;
                      return GridViewhome(
                        crossAxisCount: 2,
                        itemCount: products.length,
                        itemBuilder: (BuildContext context, index) =>
                            CustomCardSearch(
                          product: products[index],
                        ),
                      );
                    } else {
                      return Column(
                        children: [
                          Center(
                            child: Image.asset(
                              'lib/assets/images/Search (1).gif',
                              height: 170,
                              width: 170,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text('Not Found'.tr)
                        ],
                      );
                    }

                    //  return Column(
                    //     children: [
                    //       Center(
                    //         child: Image.asset(
                    //           'lib/assets/images/icon.png',
                    //           height: 160,
                    //           width: 160,
                    //         ),
                    //       ),
                    //       const SizedBox(
                    //         height: 40,
                    //       ),
                    //       const Text('NOT Found')
                    //     ],
                    //   );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

not() {
  Image.asset(
    'lib/assets/images/icon.png',
    height: 60,
    width: 60,
  );
}
