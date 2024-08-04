import 'package:flutter/material.dart';

import 'item_caffee.dart';

class ItemCafeeScrole extends StatelessWidget {
  List<ItemCaffe> caffee = [
    ItemCaffe(
        pathImage: 'assets/image/R 1.png',
        name: 'Hot Caramel Macchiato',
        price: '30\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 2.png', name: 'Cappuccino', price: '50\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 3.png', name: 'Mocha Latte', price: '55\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 4.png', name: 'Americano', price: '20\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 5.png', name: 'Black coffee', price: '15\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 6.png',
        name: 'Red Eye Coffee',
        price: '25\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 7.png',
        name: 'Vanilla Caramel Lattee',
        price: '60\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 8.png', name: 'Irish Coffee', price: '50\$'),
    ItemCaffe(
        pathImage: 'assets/image/R 9.png', name: 'Cafe Au Lait', price: '45\$'),
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
