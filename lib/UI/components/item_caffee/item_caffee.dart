import 'package:flutter/material.dart';
import 'package:untitled/UI/components/image_scrole/image_scrole.dart';
import 'package:untitled/UI/home_details/home_details.dart';

class ItemCaffe extends StatelessWidget {
  String pathImage;
  String name;
  String price;
  String iconAndNumber;

  ItemCaffe({
    super.key,
    required this.pathImage,
    required this.name,
    required this.price,
    this.iconAndNumber = '+',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 18, bottom: 10),
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                HomeDetails.routeName,
                arguments: ImageDetailsArgs(
                    pathImage: pathImage, name: name, price: price),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, top: 3, bottom: 3, right: 10),
              child: Image.asset(
                pathImage,
                width: 50,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                HomeDetails.routeName,
                arguments: ImageDetailsArgs(
                    pathImage: pathImage, name: name, price: price),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 15),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Text(
              iconAndNumber,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff2C100B),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class ImageDetailsArgs {
//   String pathImage;
//   String name;
//   String price;
//
//   ImageDetailsArgs(
//       {required this.pathImage, required this.name, required this.price});
// }
