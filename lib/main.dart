import 'package:flutter/material.dart';

void main() {
  runApp(CaffeeBreeze());
}

class CaffeeBreeze extends StatelessWidget {
  const CaffeeBreeze({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
