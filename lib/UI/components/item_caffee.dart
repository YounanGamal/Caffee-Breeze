import 'package:flutter/material.dart';

class ItemCaffe extends StatelessWidget {
  String pathImage;
  String text;
  String price;
  ItemCaffe({required this.pathImage, required this.text, required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 18,bottom: 10),
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 5.0, top: 3, bottom: 3, right: 10),
            child: Image.asset(
              pathImage,
              width: 50,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white),
              ),
              Text(
                price,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Container(
              margin: EdgeInsets.all(10),
              // padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: const ImageIcon(
                AssetImage('assets/image/+.png'),
                size: 36,
              ))
        ],
      ),
    );
  }
}
