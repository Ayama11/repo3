import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../help/const.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.getPage,
      required this.text,
      required this.width,
      this.onPressed});
  String? getPage;
  String text;
  double? width;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(getPage!);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        backgroundColor: kBaseColor,
        elevation: 5,
        fixedSize: Size(width!, 53),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
