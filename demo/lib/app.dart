import 'package:flutter/material.dart';
import 'package:demo/screens/splash_screen.dart';
import 'package:demo/styles/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: SplashScreen(),
    );
  }
}
