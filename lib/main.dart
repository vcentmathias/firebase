import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emergency_app/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUDUMA ZA DHARULA',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home:
      AnimatedSplashScreen(
        duration: 3000,
        nextScreen: Home(),
        splash: Image.asset('Assets/logo/ngao.jpeg',
        ),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        backgroundColor: Colors.black,
        splashIconSize: 1000,),
    );
  }
}

