import 'package:audiohat/UI/screens/spalah.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

double deviceWidth;
double deviceHeight;

void main() {
  deviceWidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  deviceHeight = ui.window.physicalSize.height / ui.window.devicePixelRatio;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'STC',
        primaryColor: Color(0xff13577C),
        accentColor: Color(0xffE94F36),
      ),
      home: SplashScreen(),
    );
  }
}
