import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ordersInfo/details_order_view.dart';
import 'order_show_model.dart';

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
          height: 80,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text('${"Number order".tr}' " ${showOrder.id}")),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('${"Status".tr} : ${showOrder.status}'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('${"Total Price".tr}: ${showOrder.totalPrice} $s'),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child:
                      Text('${"Date".tr}: ${showOrder.date}'.substring(0, 16)),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
