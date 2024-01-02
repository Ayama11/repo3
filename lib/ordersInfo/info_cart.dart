import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ordersInfo/details_order_view.dart';
import 'order_info_model.dart';

class CartOrdersInfo extends StatelessWidget {
  CartOrdersInfo({super.key, required this.infoOrder, required this.idorder});
  OrderInfo infoOrder;
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Center(child: Text(" ${infoOrder.name}")),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('${"Price medicine".tr}: ${infoOrder.priceMed}$s'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('${"Quantity".tr}: ${infoOrder.quantity}'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('${"Total Price".tr}: ${infoOrder.priceQU} $s'),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
