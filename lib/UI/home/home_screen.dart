import 'package:flutter/material.dart';
import 'package:untitled/UI/home/card_tab/card_screen_tab.dart';
import 'package:untitled/UI/home/favourite_tab/favourite_screen_tab.dart';
import 'package:untitled/UI/home/home_tab/homescreen_tab.dart';
import 'package:untitled/UI/home/profile_tab/myprofile_screen_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIcon = 0;

  List<Widget> tabs = [
    const HomeScreenTab(),
    FavouriteScreenTab(),
    CardScreenTab(),
    MyprofileScreenTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE1E0DD),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: tabs[selectedIcon],
        bottomNavigationBar: Container(
          color: const Color(0xffC29377),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff552F22),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: NavigationBar(
              height: 70,
              // backgroundColor: Color(0xff552F22),
              backgroundColor: Colors.transparent,
              indicatorColor: Colors.transparent,

              selectedIndex: selectedIcon,
              onDestinationSelected: (value) {
                selectedIcon = value;
                setState(() {});
              },
              destinations: const [
                NavigationDestination(
                  icon: ImageIcon(
                    color: Colors.white,
                    AssetImage(
                      'assets/image/Vector.png',
                    ),
                  ),
                  selectedIcon: ImageIcon(
                    color: Color(0xff220C09),
                    AssetImage(
                      'assets/image/Vector.png',
                    ),
                  ),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.favorite,
                    color: Color(0xff220C09),
                  ),
                  label: '',
                ),
                NavigationDestination(
                  icon: ImageIcon(
                    color: Colors.white,
                    AssetImage(
                      'assets/image/Mask group.png',
                    ),
                  ),
                  selectedIcon: ImageIcon(
                    color: Color(0xff220C09),
                    AssetImage(
                      'assets/image/Mask group.png',
                    ),
                  ),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.person,
                    color: Color(0xff220C09),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
