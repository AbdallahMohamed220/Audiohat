import 'package:audiohat/UI/screens/welcom_view.dart';
import 'package:flutter/material.dart'hide Element;
import 'dart:ui' as myUI;
import 'UI/screens/login.dart';
import 'UI/screens/register.dart';

double deviceWidth = myUI.window.physicalSize.width / myUI.window.devicePixelRatio;
double deviceHeight = myUI.window.physicalSize.height / myUI.window.devicePixelRatio;

void main() {
   runApp(MyApp());
  //runApp(DevicePreview(builder:(context)=> MyApp()));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'STC',
        primaryColor: Color(0xff13577C),
        accentColor: Color(0xffE94F36),
      ),
      home: RegisterScreen()
    );
  }
}
