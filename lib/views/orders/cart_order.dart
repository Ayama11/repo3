import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ordersInfo/details_order_view.dart';
import 'order_show_model.dart';
import 'orders_view.dart';

class CartOrdersShow extends StatelessWidget {
  CartOrdersShow({super.key, required this.showOrder, required this.idorder});
  ShowOrderModel showOrder;
  final String s = '\$';
  final int idorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetelisOrder(
          id: idorder,
        ));
      },
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 216, 220, 243),
        child: SizedBox(
          height: 70,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Number order:' " ${showOrder.id}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('status : ${showOrder.status}'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Total Price : ${showOrder.totalPrice} $s'),
                const SizedBox(
                  height: 10,
                ),
                Text('Date: ${showOrder.date}'.substring(0, 16))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
