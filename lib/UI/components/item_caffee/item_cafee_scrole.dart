import 'package:flutter/material.dart';

import 'item_caffee.dart';

class ItemCafeeScrole extends StatelessWidget {
  List<ItemCaffe> caffee = [
    ItemCaffe(
        pathImage: 'assets/image/R 1.png',
        text: 'Hot Caramel Macchiato',
        price: '30\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 2.png', text: 'Cappuccino', price: '50\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 3.png', text: 'Mocha Latte', price: '55\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 4.png', text: 'Americano', price: '20\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 5.png', text: 'Black coffee', price: '15\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 6.png',
        text: 'Red Eye Coffee',
        price: '25\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 7.png',
        text: 'Vanilla Caramel Lattee',
        price: '60\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 8.png', text: 'Irish Coffee', price: '50\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 9.png', text: 'Cafe Au Lait', price: '45\$'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: caffee.length,
        itemBuilder: (BuildContext context, int index) {
          return caffee[index];
        },
      ),
    );
  }
}
