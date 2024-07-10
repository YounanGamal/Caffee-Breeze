import 'package:flutter/material.dart';
import 'package:untitled/UI/home/card_tab/card_screen_tab.dart';
import 'package:untitled/UI/home/fevorite_tab/fevorite_screen_tab.dart';
import 'package:untitled/UI/home/home_tab/homescreen_tab.dart';
import 'package:untitled/UI/home/profile_tab/myprofile_screen_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIcon = 0;

  List<Widget> tabs = [
    HomeScreenTab(),
    CardScreenTab(),
    FevoriteScreenTab(),
    MyprofileScreenTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE1E0DD),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
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
        body: tabs[selectedIcon],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIcon,
          onTap: (index) {
            selectedIcon = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/image/Vector.png',
                ),
              ),
              label: '',
              backgroundColor: Color(0xff552F22),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
              backgroundColor: Color(0xff552F22),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/image/Mask group.png',
                ),
              ),
              label: '',
              backgroundColor: Color(0xff552F22),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Color(0xff552F22),
            ),
          ],
          selectedIconTheme: const IconThemeData(color: Colors.black, size: 28),
          unselectedIconTheme:
              const IconThemeData(color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
