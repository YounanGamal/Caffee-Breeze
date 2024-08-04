import 'package:flutter/material.dart';
import 'package:untitled/UI/home_details/home_details.dart';

class ImageScrole extends StatefulWidget {
  ImageDetailsArgs? imageDetailsArgs;

  @override
  State<ImageScrole> createState() => _ImageScroleState();
}

class _ImageScroleState extends State<ImageScrole> {
  final List<String> imagePaths = [
    'assets/image/Rectangle 4.png',
    'assets/image/Rectangle 5.png',
    'assets/image/Rectangle 6.png',
    'assets/image/Rectangle 7.png',
    'assets/image/Rectangle 8.png',
    'assets/image/Rectangle 9.png',
  ];
  List<String> imagePathDetails = [
    'assets/New folder/Rectangle 9.png',
    'assets/New folder/Rectangle 9-4.png',
    'assets/New folder/Rectangle 9-5.png',
    'assets/New folder/Rectangle 9-2.png',
    'assets/New folder/Rectangle 9-3.png',
    'assets/New folder/Rectangle 9-1.png',
  ];
  List<String> nameDetails = [
    'Iced Chocolate\nShaken Espresso',
    ''' Whipped Coffee''',
    '''Iced Americano''',
    'Iced Latte Coffee',
    '''Smoked iced Caramel\nMacchiato''',
    'Vietnames Cold'
  ];
  List<String> priceDetails = ['50\$', '45\$', '35\$', '55\$', '60\$', '25\$'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: EdgeInsets.only(left: 11),
      child: ListView.builder(
        itemCount: imagePaths.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 7),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HomeDetails.routeName,
                  arguments: ImageDetailsArgs(
                      pathImage: imagePathDetails[index],
                      price: priceDetails[index],
                      name: nameDetails[index]),
                );
              },
              child: Image.asset(imagePaths[index]),
            ),
          );
        },
      ),
    );
  }
}

class ImageDetailsArgs {
  int count =1;
  String pathImage;
  String name;
  String price;
  ImageDetailsArgs({
    required this.pathImage,
    required this.price,
    required this.name,
  });
}
