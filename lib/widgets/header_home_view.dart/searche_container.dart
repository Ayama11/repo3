import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class SearcheContainer extends StatelessWidget {
  const SearcheContainer({
    super.key,
    required this.textsearche,
  });
  final String textsearche;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: Colors.grey[600]!,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                textsearche,
                style: TextStyle(color: Colors.grey[600]!),
              )
            ],
          )),
    );
  }
}
