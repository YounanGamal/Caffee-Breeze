import 'package:flutter/material.dart';

class CustomBottom extends StatefulWidget {
  String nameBottom;
  CustomBottom({required this.nameBottom});

  @override
  State<CustomBottom> createState() => _CustomBottomState();
}

class _CustomBottomState extends State<CustomBottom> {
  String path = 'assets/image/Ellipse 2.png';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            path = path == 'assets/image/Ellipse 2.png'
                ? 'assets/image/Ellipse 3.png'
                : 'assets/image/Ellipse 2.png';
          });
        },
        child: Row(
          children: [
            Image.asset(path),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                widget.nameBottom,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
