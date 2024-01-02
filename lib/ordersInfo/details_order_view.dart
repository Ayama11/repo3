import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/ordersInfo/info_cart.dart';

import '../widgets/cards/gridview_home.dart';
import 'order_info_model.dart';
import '../widgets/header_home_view.dart/appbar.dart';
import 'order_info_services.dart';

class DetelisOrder extends StatelessWidget {
  const DetelisOrder({super.key, required this.id});
  final int id;
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
              showBackArrow: true,
              backgroundColor: Colors.transparent,
              titel: Text(
                "33".tr,
                style: const TextStyle(
                    color: Colors.black, fontFamily: 'Charm-Regular'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: FutureBuilder<List<OrderInfo>>(
                future: OrderInfoService().orderInfo(id: id),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<OrderInfo> product = snapshot.data!;

                    return GridViewhome(
                      crossAxisCount: 2,
                      itemCount: product.length,
                      itemBuilder: (BuildContext context, index) =>
                          CartOrdersInfo(
                        infoOrder: product[index],
                        idorder: id,
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
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
