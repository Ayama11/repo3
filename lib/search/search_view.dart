import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

import 'package:repopharma_app/search/testsearch.dart';

class SearchView extends StatelessWidget {
  SearchView({
    super.key,
    required this.com,
  });
  String com;
  GlobalKey<FormState> fomkey = GlobalKey();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search'.tr,
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
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Form(
                      key: fomkey,
                      child: Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            searchController.text = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              color: Colors.grey,
                              onPressed: () {
                                com = searchController.text;
                                if (com.isEmpty) {
                                  Get.snackbar(
                                      'Erorr'.tr, 'enter medicen name'.tr,
                                      backgroundColor: const Color.fromARGB(
                                          255, 241, 189, 185));
                                } else if (com.isNotEmpty) {
                                  Get.to(Test(
                                    com: searchController.text,
                                  ));
                                }
                              },
                              icon: const Icon(
                                Iconsax.search_normal,
                                size: 28,
                              ),
                            ),
                            hintText: 'Search in medicen'.tr,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(90)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 233, 231, 231),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //  Padding(
                //     padding: const EdgeInsets.all(8),
                //     child: FutureBuilder<List<SearchMedicenModel>>(
                //       future: SearchService().search(com: com),
                //       builder: (context, snapshot) {
                //         if (snapshot.hasData) {
                //           List<SearchMedicenModel> products = snapshot.data!;
                //           return GridViewhome(
                //             itemCount: products.length,
                //             itemBuilder: (BuildContext context, index) =>
                //                 CustomCardSearch(
                //               product: products[index],
                //             ),
                //           );
                //         } else {
                //           return const CircularProgressIndicator();
                //         }
                //       },
                //     ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
