import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:repopharma_app/medicen/medicen_view.dart';

import '../../gategory_view/gategory_model.dart';

// ignore: must_be_immutable
class CardGategory extends StatelessWidget {
  CardGategory({super.key, required this.product, required this.categoryId});
  final int categoryId;
  GategoryModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(Medicen(
          id: categoryId,
          comSearch: '',
        ));
        // Navigator();
      },
      child: Card(
        shape: ShapeBorder.lerp(const CircleBorder(), const CircleBorder(), 5),
        elevation: 7,
        color: Colors.white,
        child: Container(
          decoration: const BoxDecoration(),
          height: 100,
          width: 200,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'lib/assets/images/Medicine-amico.png',
                  height: 90,
                  width: 90,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(product.name),
            ],
          ),
        ),
      ),
    );
  }
}
