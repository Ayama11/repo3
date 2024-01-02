import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/views/orders/cart_order.dart';
import 'package:repopharma_app/widgets/cards/card_Gategory.dart';

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
              padding: const EdgeInsets.only(left: 35, right: 35),
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

// class CordersCard extends StatelessWidget {
//   const CordersCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Get.to(const DetelisOrder());
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Card(
//           elevation: 5,
//           color: const Color.fromARGB(255, 216, 220, 243),
//           child: SizedBox(
//             height: 70,
//             width: 300,
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: FutureBuilder<List<ShowOrderModel>>(
//                 future: OrderShowService().showOrder(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     List<ShowOrderModel> products = snapshot.data!;

//                     return GridViewhome(
//                       crossAxisCount: 1,
//                       itemCount: products.length,
//                       itemBuilder: (BuildContext context, index) =>
//                           CartOrdersShow(
//                         showOrder: products[index],
                        
//                       ),
//                     );
//                   } else {
//                     return const Center(child: CircularProgressIndicator());
//                   }
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

