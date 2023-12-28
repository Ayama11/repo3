import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchContainerTest extends StatelessWidget {
  SearchContainerTest({
    Key? key,
    required textsearche,
    this.nameCom,
  }) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  final String? nameCom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  Get.to(const SearchView());
      },
      child: Form(
        // Add a GlobalKey<FormState> key if you need to manage the form state
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              // IconButton(
              //   color: Colors.grey[600]!,
              //   onPressed: () {
              //     Get.to(const SearchView());
              //   },
              //   icon: const Icon(
              //     Iconsax.search_normal,
              //     size: 26,
              //   ),
              // ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    searchController.text = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[600]!)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search in store',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    prefixIcon: IconButton(
                      color: Colors.grey[600]!,
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.search_normal,
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
