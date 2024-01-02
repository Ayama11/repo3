import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/cart/controller.dart';
import 'package:repopharma_app/views/navigetion_bottom/favorite_view.dart';

import 'package:repopharma_app/widgets/custom_elevated_Buttom.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../help/const.dart';
import '../../medicen/medicen_bygat_model.dart';
import '../../cart/cart_view.dart';
import '../circular_icons.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.product,
  });
  GategoryMedicenModel product;

  final String ss = '\$';
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(const DrugDetiels());
        // Navigator();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Card(
          color: const Color.fromARGB(255, 249, 247, 250),
          elevation: 5,
          child: SizedBox(
            height: 100,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          void addToFavorites(CustomCard fav) async {
                            SharedPreferences prefes =
                                await SharedPreferences.getInstance();
                            List<String> favorites =
                                prefes.getStringList('favorites') ?? [];
                            favorites.add(fav as String);
                            prefes.setStringList('favorites', favorites);
                          }
                          // Get.to(const FavoriteView());
                        },
                        icon: const Icon(Iconsax.heart)),
                    Center(
                      child: Text(
                        product.commercialName,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 10, 7, 7), fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${product.price} $ss',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 10, 7, 7),
                                fontSize: 15),
                          ),
                          BottomSheet(product: product),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  BottomSheet({
    super.key,
    required this.product,
  });
  int count = 0;
  final CartController cartController = Get.find();
  final GategoryMedicenModel product;
  final String ss = '\$';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color.fromARGB(255, 216, 220, 243),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            context: context,
            builder: (context) => Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              product.commercialName,
                              style: const TextStyle(fontSize: 17),
                            ),
                          ),
                          CircularIcons(
                            height: 40,
                            width: 45,
                            size: 24,
                            color: Colors.white,
                            backgrounColor: kBaseColor,
                            icon: Iconsax.shopping_cart,
                            onPreessed: () {
                              Get.to(CartView());
                            },
                          )
                          // IconButton(
                          //   onPressed: () {
                          //     Get.to(CartView());
                          //   },
                          //   icon: const Icon(
                          //     Iconsax.shopping_cart,
                          //     size: 26,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name : ${product.company}',
                      style: const TextStyle(fontSize: 16, color: FontColor),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Quantity : ${product.totalQuantity}',
                      style: const TextStyle(fontSize: 16, color: FontColor),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'ExpDate : ${product.expDate}',
                      style: const TextStyle(fontSize: 16, color: FontColor),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Price : ${product.price} $ss',
                      style: const TextStyle(fontSize: 18, color: kBaseColor),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircularIcons(
                              backgrounColor: Colors.grey,
                              width: 40,
                              height: 40,
                              size: 20,
                              color: Colors.white,
                              icon: Iconsax.minus,
                              onPreessed: () {
                                cartController.removeItem();
                              },
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Obx(
                              () => Text(
                                "${cartController.numOfItem}",
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            CircularIcons(
                              backgrounColor: kBaseColor,
                              width: 40,
                              height: 40,
                              size: 20,
                              color: Colors.white,
                              icon: Iconsax.add,
                              onPreessed: () {
                                cartController.addItem();
                              },
                            ),
                          ],
                        ),

                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor: kBaseColor,
                              elevation: 5,
                              fixedSize: const Size(170, 53),
                            ),
                            onPressed: () {
                              cartController.addToCart(product);
                              Get.snackbar("34".tr, "38".tr,
                                  backgroundColor:
                                      const Color.fromARGB(255, 173, 233, 175));
                              // defaultDialog(
                              //     title: 'Done',
                              //     textCancel: ' Add to cart Successfully',
                              //     backgroundColor:
                              //         const Color.fromARGB(255, 173, 233, 175));
                            },
                            child: Text(
                              "19".tr,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        icon: const Icon(Iconsax.arrow_circle_up),
        color: kBaseColor,
      ),
    );
  }
}

            // add_circle
            //more_square
            //arrow_circle_up
            
       
      
   