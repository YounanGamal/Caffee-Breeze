import 'package:flutter/material.dart';
import 'package:untitled/UI/components/item_caffee.dart';
import 'package:untitled/UI/components/item_image.dart';

import '../../components/image_scrole.dart';

class HomeScreenTab extends StatefulWidget {
  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> {
  List<String> caffee = [
    'assets/image/R 1.png',
    'assets/image/R 2.png',
    'assets/image/R 3.png',
    'assets/image/R 4.png',
    'assets/image/R 5.png',
    'assets/image/R 6.png',
    'assets/image/R 7.png',
    'assets/image/R 8.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              top: 10,
            ),
            child: ItemImage(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 23, top: 12, right: 22, bottom: 10),
            child: Text(
              'Iced Coffee',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          ImageScrole(),
          Text('caffee'),
          Expanded(
            child: ListView.builder(
              itemCount: caffee.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemCaffe(
                    pathImage: 'assets/image/R ${index + 1}.png',
                    text: 'dddddd',
                    price: 'price');
              },
            ),
          ),
        ],
      ),
    );
  }
}
