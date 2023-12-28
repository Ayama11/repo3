import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/search/search_model.dart';
import 'package:repopharma_app/views/navigetion_bottom/favorite_view.dart';

import 'package:repopharma_app/widgets/custom_elevated_Buttom.dart';

import '../../help/const.dart';

// ignore: must_be_immutable
class CustomCardSearch extends StatelessWidget {
  CustomCardSearch({
    super.key,
    required this.product,
  });
//GategoryMedicenModel product;
  SearchMedicenModel product;

  final String ss = '\$';

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
                    // Image(
                    //   image: AssetImage('lib/assets/images/icon.png'),
                    //   width: 50,
                    //   height: 50,
                    // ),
                    IconButton(
                        onPressed: () {
                          Get.to(const FavoriteView());
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
                      padding: const EdgeInsets.only(left: 16, right: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            // ' product.price.toString()' + ss,
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
  const BottomSheet({
    super.key,
    required this.product,
  });

  final SearchMedicenModel product;
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
                padding: const EdgeInsets.only(left: 18.0),
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
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.heart),
                          ),
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
                      style: const TextStyle(fontSize: 16, color: FontColor),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Center(
                      child: CustomElevatedButton(
                          getPage: '/Card', text: 'add to cart', width: 170),
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
            
       
      
   