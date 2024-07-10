import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  static const String routeName = 'info';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Icon(Icons.arrow_back,color: Color(0xff552F22),size: 38,),
          Container(
            color: Colors.white,
            height: 50,
              width: 50,
          ),
        ],
      ),
    );
  }
}
