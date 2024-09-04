import 'package:flutter/material.dart';
import 'package:visa_app/theme.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool? obscureText;
  final String? errorText;
  final Key? formKey;
  final TextInputType? keyboardType;
  final bool? enabled;

  const CustomTextField({
    super.key,
    required this.placeholder,
    this.onChanged,
    this.controller,
    this.obscureText,
    this.formKey,
    this.errorText,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return TextFormField(
      enabled: enabled!,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        // errorText: validator?.error.toString(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(155, 100, 100, 100),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xff011E30),
            width: 2,
          ),
        ),
        filled: true,
        hintText: placeholder,
        hintStyle: hintStyle,
        fillColor: const Color.fromRGBO(255, 255, 255, 0.702),
        errorText: errorText != '' ? errorText : null,
      ),
    );
  }
}
