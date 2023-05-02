import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.onTap,
      this.onChanged,
      this.controller,
      this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.onFieldSubmitted,
        this.readOnly=false, this.keyboardType,})
      : super(key: key);
  final Function()? onTap;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onFieldSubmitted;
  final bool readOnly;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      autofocus: true,
      onChanged: onChanged,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          label: label,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
