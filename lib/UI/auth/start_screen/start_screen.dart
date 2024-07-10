import 'package:flutter/material.dart';
import 'package:untitled/UI/auth/sing_in/singin_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  static const String routeName = 'Start-Screen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/start.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, SingInScreen.routeName);
            },
            // child: Container(
            //   width: 63,
            //   height: 63,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(40),
            //     color: Color(0xffD9D9D9),
            //     image: const DecorationImage(
            //       image: AssetImage(
            //         'assets/image/weui_arrow-outlined.png',
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
