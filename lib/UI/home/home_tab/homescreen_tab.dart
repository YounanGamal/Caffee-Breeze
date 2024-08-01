import 'package:flutter/material.dart';
import 'package:untitled/UI/components/item_image.dart';

import '../../components/image_scrole/image_scrole.dart';
import '../../components/item_caffee/item_cafee_scrole.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 23,
          ),
          child: Text(
            'Hello',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
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
          const Padding(
            padding: EdgeInsets.only(left: 23.0, top: 8, bottom: 8),
            child: Text('caffee'),
          ),
          ItemCafeeScrole(),
        ],
      ),
    );
  }
}
