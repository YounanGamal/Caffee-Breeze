import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatelessWidget {
  String hintText;
  IconData icon;
  TextEditingController? controller;
  TextInputType keyboardType;
  bool isObscureText;
  Validator? validator;

  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
    this.isObscureText = false,
    required this.keyboardType,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isObscureText,
        keyboardType: keyboardType,
        cursorColor: Color(0xff2C100B),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
          prefixIcon: Icon(
            icon,
            color: Color(0xff2C100B),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
            width: 1,
            color: Color(0xff2C100B),
          )),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xff2C100B),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
