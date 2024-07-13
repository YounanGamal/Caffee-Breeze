import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/UI/auth/sing_in/singin_screen.dart';
import 'package:untitled/UI/auth/sing_up/singup_screen.dart';
import 'package:untitled/UI/auth/start_screen/start_screen.dart';
import 'package:untitled/UI/home/home_screen.dart';
import 'package:untitled/UI/home_details/home_details.dart';
import 'package:untitled/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CaffeeBreeze());
}

class CaffeeBreeze extends StatelessWidget {
  const CaffeeBreeze({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Color(0xff552F22), size: 40),
              backgroundColor: Color(0xffE1E0DD),
              titleTextStyle: TextStyle(
                  fontFamily: 'Indie Flower',
                  fontSize: 40,
                  fontWeight: FontWeight.w400)),
          primaryColor: Color(0xffC29377),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffE1E0DD),
            primary: Color(0xffE1E0DD),
            onPrimary: Colors.black,
            secondary: Color(0xffC29377),
            onSecondary: Color(0xff2C100B),
          )),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeDetails.routeName: (context) => HomeDetails(),
        StartScreen.routeName: (context) => StartScreen(),
        SingInScreen.routeName: (context) => SingInScreen(),
        SingUpScreen.routeName: (context) => SingUpScreen(),
      },
      initialRoute: StartScreen.routeName,
    );
  }
}
