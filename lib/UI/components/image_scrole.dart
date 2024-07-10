import 'package:flutter/material.dart';

import '../information_page/info_screen.dart';

class ImageScrole extends StatefulWidget {
  @override
  State<ImageScrole> createState() => _ImageScroleState();
}

class _ImageScroleState extends State<ImageScrole> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: EdgeInsets.only(left: 11),
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 7),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, InfoScreen.routeName);
                },
                child: Image.asset('assets/image/Rectangle ${index + 4}.png')),
          );
        },
      ),
    );
  }
}
