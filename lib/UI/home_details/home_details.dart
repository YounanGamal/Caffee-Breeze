import 'package:flutter/material.dart';

class HomeDetails extends StatelessWidget {
  static const String routeName = 'info';

  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/New folder/Rectangle 9.png'),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 30),
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff552F22),
                  size: 38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
