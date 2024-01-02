import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/views/orders/cart_order.dart';

import '../../widgets/cards/gridview_home.dart';
import '../../widgets/header_home_view.dart/appbar.dart';
import 'order_show_model.dart';
import 'order_show_service.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

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
              titel: Text(
                "32".tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Charm-Regular',
                  //   fontSize: 20
                ),
              ),
              backgroundColor: Colors.transparent,
              showBackArrow: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 55, left: 55),
              child: FutureBuilder<List<ShowOrderModel>>(
                future: OrderShowService().showOrder(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ShowOrderModel> products = snapshot.data!;

                    return GridViewhome(
                      crossAxisCount: 1,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, index) =>
                          CartOrdersShow(
                        showOrder: products[index],
                        idorder: products[index].id,
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
