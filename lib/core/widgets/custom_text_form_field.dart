import 'package:flutter/material.dart';

class MyCustomTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  final TextEditingController? controller;
  final void Function(String?)? onSubmit;

  const MyCustomTextFormField(
      {super.key,
      required this.hintText,
      this.onSubmit,
      this.controller,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Add The Amount";
          } else {
            return null;
          }
        },
        onSaved: onSubmit,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff7E7D7A)),
          prefixIconColor: Color(0xff7E7D7A),
        ),
        // keyboardType: TextInputType.number,
      ),
    );
  }
}
