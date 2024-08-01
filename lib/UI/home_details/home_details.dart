import 'package:flutter/material.dart';
import 'package:untitled/UI/components/CustomButtom.dart';
import 'package:untitled/UI/components/custom_bottom_home_details.dart';
import 'package:untitled/UI/components/image_scrole/image_scrole.dart';

class HomeDetails extends StatefulWidget {
  static const String routeName = 'info';
  int number = 1;

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  String path = 'assets/image/Vector1.png';
  int selectedIndex = -1;

  void handleTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as ImageDetailsArgs?;

    if (args == null) {
      return const Text('Error: No arguments received');
    }
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 44.0, top: 10, bottom: 8),
                child: Image.asset(
                  args.pathImage,
                  fit: BoxFit.fill,
                  width: 280,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff552F22),
                    size: 38,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 28.0, left: 22, top: 7, bottom: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (widget.number > 1) {
                      widget.number--;
                    }
                    setState(() {});
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const ImageIcon(
                        AssetImage('assets/image/-.png'),
                        size: 36,
                      )),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      child: Text(
                        '${widget.number}',
                        style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    widget.number++;
                    setState(() {});
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const ImageIcon(
                        AssetImage('assets/image/+.png'),
                        size: 36,
                      )),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      path = path == 'assets/image/Vector1.png'
                          ? 'assets/image/Variant2.png'
                          : 'assets/image/Vector1.png';
                    });
                  },
                  child: Image.asset(path),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 5),
            child: Text(
              args.name,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 63,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, top: 12),
            child: Text(
              'Size',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff552F22)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBottomHomeDetails(
                  nameBottom: 'Small',
                  index: 0,
                  onTap: handleTap,
                  isSelected: selectedIndex == 0,
                ),
                CustomBottomHomeDetails(
                  nameBottom: 'Medium',
                  index: 1,
                  onTap: handleTap,
                  isSelected: selectedIndex == 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: CustomBottomHomeDetails(
                    nameBottom: 'Large',
                    index: 2,
                    onTap: handleTap,
                    isSelected: selectedIndex == 2,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24.0, top: 18),
            child: Text(
              'Extra',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff552F22)),
            ),
          ),
          CustomBottom(
            nameBottom: 'Milk',
          ),
          CustomBottom(
            nameBottom: 'Cream',
          ),
          CustomBottom(
            nameBottom: 'Chocolate  Sauce',
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 47, top: 20, right: 26),
            child: Row(
              children: [
                Text(
                  args.price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 20),
                ),
                const Spacer(
                  flex: 1,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 160,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color(0xff552F22),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
