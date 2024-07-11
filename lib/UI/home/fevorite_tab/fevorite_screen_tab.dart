import 'package:flutter/material.dart';

class FevoriteScreenTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC29377),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Fevorite',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xff552F22),
          ),
        ),
      ),
    );
  }
}
