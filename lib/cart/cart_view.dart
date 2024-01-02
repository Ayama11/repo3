import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/cart/cart_list_item_model.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/orders/order_service.dart';
import 'package:repopharma_app/widgets/cards/custom_card.dart';
import 'package:repopharma_app/widgets/circular_icons.dart';

import 'controller.dart';
import '../widgets/header_home_view.dart/appbar.dart';
import '../views/orders/orders_view.dart';

class CartView extends StatelessWidget {
  CartView({super.key});
  final CartController cartController = Get.put(CartController());
  final String ss = '\$';
  CartItemModel? id, qty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          AppBarW(
            titel: Text(
              "15".tr,
              style: const TextStyle(
                  color: Colors.black, fontFamily: 'Charm-Regular'),
            ),
            backgroundColor: Colors.transparent,
            showBackArrow: T,
            actions: [
              Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Iconsax.menu_board,
                    color: Colors.black,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Get.to(const OrderView());
                  },
                );
              })
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Obx(
                          () => ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: cartController.cartItems.length,
                              itemBuilder: (context, index) {
                                // var id=cartController.cartItems[index];
                                var currenItem =
                                    cartController.cartItems[index];
                                return Card(
                                  clipBehavior: Clip.none,
                                  color:
                                      const Color.fromARGB(255, 216, 220, 243),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18),
                                        child: Text(
                                            currenItem.item.commercialName),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(18),
                                        child: Column(
                                          children: [
                                            Text(
                                                "${"20".tr}: ${currenItem.qty} "),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CircularIcons(
                                              height: 40,
                                              width: 40,
                                              size: 20,
                                              color: Colors.white,
                                              backgrounColor: kBaseColor,
                                              icon: Iconsax.trash,
                                              onPreessed: () {
                                                cartController
                                                    .removeItemCartList(
                                                        currenItem);
                                                Get.snackbar("34".tr, "39".tr,
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255,
                                                            167,
                                                            235,
                                                            169));
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                      " ${"22".tr}:\n  ${cartController.totalPrice.value.toString()} $ss"),
                ),
                Obx(
                  () => Text(
                      "${"23".tr}:\n  ${cartController.totalQty.value.toString()}"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: kBaseColor,
                  elevation: 5,
                  fixedSize: const Size(100, 53),
                ),
                onPressed: () async {
                  if (cartController.cartItems.isEmpty) {
                    Get.defaultDialog(
                        title: "35".tr,
                        middleText: "37".tr,
                        backgroundColor:
                            const Color.fromARGB(255, 236, 190, 185));
                  } else if (cartController.cartItems.isNotEmpty) {
                    var order = cartController.returnCatr();
                    CreateOrderService().orderService(order);
                    Get.defaultDialog(title: "34".tr, middleText: "36".tr);
                    cartController.clearCart();
                  }
                },
                child: Text("21".tr)),
          ),
        ],
      ),
    );
  }
}
//import 'package:get_storage/get_storage.dart';


