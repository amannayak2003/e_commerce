import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce/initial_screen/screen1.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color primary = Color(0xFF074278);
  static const Color secondary = Color(0xFFF5D3D3);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  fontFamily: 'myfont1',
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
              titleMedium: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1,
                  fontFamily: 'myfont1',
                  fontWeight: FontWeight.w500,
                  color: Colors.black))),
      home: AnimatedSplashScreen(
        splash: Center(child: Lottie.asset("assets/animation/splash.json")),
        nextScreen: home(),
        duration: 3500,
        splashIconSize: 200,
        backgroundColor: MyApp.secondary,
      ),
    );
  }
}
