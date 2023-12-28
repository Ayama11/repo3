import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.icons,
    @required this.typeKey,
    this.obscureText = false,
    this.onChanged,
    this.controller,
  });
  String? hintText;
  IconData? icons;
  TextInputType? typeKey;
  bool? obscureText;
  Function(String)? onChanged;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      keyboardType: typeKey,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(199),
          borderSide: const BorderSide(color: Color(0xffd6d9f1), width: 2.5),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Color.fromARGB(255, 109, 108, 108), fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(199),
        ),
        prefixIcon: Icon(
          icons,
          color: const Color.fromARGB(255, 172, 182, 241),
          // const Color.fromARGB(255, 245, 199, 243),
          size: 26,
        ),
      ),
    );
  }
}
