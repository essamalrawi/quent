import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.textInputType,
    required this.obscureText,
    this.onSaved,
    this.readonly,
    this.onTap,
    this.textEditingController,
  });

  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? readonly;
  final void Function(String?)? onSaved;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      onTap: onTap,
      readOnly: readonly ?? false,
      onSaved: onSaved,
      obscureText: obscureText,
      keyboardType: textInputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle: AppStyles.regular14(
          context,
        ).copyWith(color: const Color(0xFF7F7F7F), letterSpacing: -0.14),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 1, color: Color(0xFFD7D7D7)),
    );
  }
}
