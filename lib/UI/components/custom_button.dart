import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String titlebutton;
  double height;
  double width;

  CustomButton({super.key, 
    required this.titlebutton,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff552F22),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        titlebutton,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
