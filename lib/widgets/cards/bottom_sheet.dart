import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../help/const.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
    this.onClosing,
    this.builder,
  });
  final Function()? onClosing;
  final Widget Function(BuildContext)? builder;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: const Color.fromARGB(255, 219, 235, 243),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            context: context,
            builder: (context) => const Center(
                  child: Column(
                    children: [
                      Text('name'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('company'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('quantity'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('date'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('price'),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ));
      },
      icon: const Icon(Iconsax.more_square5
          // add_circle
          ),
      color: kBaseColor,
    );
  }
}
