import 'package:flutter/material.dart';

class QuahaTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextStyle textStyle;
  final Widget prefixIcon;
  final TextInputType? textInputType;
  const QuahaTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.textStyle,
      required this.prefixIcon,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle,
        filled: true,
        prefixIcon: prefixIcon,
        fillColor: const Color(0xFF575C83),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
