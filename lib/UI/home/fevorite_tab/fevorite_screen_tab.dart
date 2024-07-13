import 'package:flutter/material.dart';

class FevoriteScreenTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC29377),
      child: const Padding(
        padding:  EdgeInsets.all(30),
        child:  Column(children: [
          Text(
            'Favorite',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Divider(
            color: Colors.white,
            height: 2,
            endIndent: 90,
            indent: 90,
          ),
          SizedBox(
            height: 40,
          ),
        ],),
      ),
    );
  }
}
