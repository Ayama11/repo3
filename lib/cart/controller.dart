import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../medicen/medicen_bygat_model.dart';
import '../search/search_model.dart';
import 'cart_list_item_model.dart';

class CartController extends GetxController {
  var cartItems = <CartItemModel>[].obs;
  final List<SearchMedicenModel> cartItem = <SearchMedicenModel>[].obs;

  var numOfItem = 1.obs;
  var totalQty = 0.obs;
  var totalPrice = 0.obs;
  returnCatr() {
    return cartItems;
  }

  void addItem() {
    numOfItem.value++;
  }

  void removeItem() {
    if (numOfItem.value > 1) {
      numOfItem.value--;
    }
  }

  void addToCart(GategoryMedicenModel item) {
    final index = cartItems.indexWhere((element) => element.item == item);
    if (index >= 0) {
      cartItems[index] = CartItemModel(
          item: item, qty: (numOfItem.value + cartItems[index].qty));
    } else {
      cartItems.add(CartItemModel(item: item, qty: numOfItem.value));
    }

    totalQty.value = totalQty.value + numOfItem.value;

    totalPrice.value = totalPrice.value + ((item.price) * numOfItem.value);
    numOfItem.value = 1;
  }

  void addToCartSearch(SearchMedicenModel itemSearch) {
    cartItem.add(itemSearch);
  }

  void removeFromCart(GategoryMedicenModel item) {
    cartItems.remove(item);
  }

  void intilisaeQuantity() {
    numOfItem.value = 1;
  }

  void removeItemCartList(CartItemModel currentItem) {
    cartItems.remove(currentItem);

    totalQty.value = totalQty.value - currentItem.qty;
    totalPrice.value =
        totalPrice.value - ((currentItem.item.price) * currentItem.qty);
  }

  void clearCart() {
    cartItems.clear();
    totalQty.value = 0;
    totalPrice.value = 0;
  }

  Future<void> sendOrderToServer() async {
    if (cartItems.isEmpty) {
      return Get.defaultDialog(
          title: 'Erorr',
          middleText: 'Cart is empty, add item to cart',
          backgroundColor: const Color.fromARGB(255, 236, 190, 185));
    }
  }
}
