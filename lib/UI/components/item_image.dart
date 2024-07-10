import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  List<String> images = [
    'assets/image/Rectangle 4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
          ),
          height: 110,
        ),
        Image.asset('assets/image/Vector 1.png'),
        Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10,bottom: 20),
                  child: Text(
                    ' for Today',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28,),
                  child: Text(
                    'Order any coffee and',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 72),
                  child: Text(
                    ' take ice coffee fre',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset(
                  'assets/image/Cold_Brew_Coffee___Gimme_Some_Oven-removebg-preview 1.png'),
            )
          ],
        )
      ],
    );
  }
}
