import 'package:flutter/material.dart';
import 'package:voicenotesapp/widgtes/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextFormField({
     this.controller,
     required this.keyboardType,
    required this.hintText,
    required this.labelText,
    this.obscureText = false,
     this.validator,
     this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        labelText: labelText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.mygreen),
            borderRadius: BorderRadius.all(Radius.circular(0.0))
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(0.0))
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}

