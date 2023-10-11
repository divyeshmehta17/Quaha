import 'package:flutter/material.dart';

class QuahaTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final bool? readonly;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final BoxConstraints? preficIconConstraints;
  const QuahaTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.obscureText,
      this.textStyle,
      this.prefixIcon,
      this.textInputType,
      this.readonly,
      this.onTap,
      this.focusNode,
      this.validator,
      this.preficIconConstraints});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextFormField(
        onTap: onTap,
        style: TextStyle(color: Colors.white),
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        focusNode: focusNode,
        readOnly: readonly ?? false,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: textStyle,
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints: preficIconConstraints,
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
      ),
    );
  }
}
