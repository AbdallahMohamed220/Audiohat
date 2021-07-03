import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.only(top: deviceHeight * 0.2),
              child: Image.asset(
                "assets/images/clipper.png",
                height: deviceHeight * 0.8,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: deviceHeight * 0.10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(32),
                  width: deviceHeight * 0.24,
                  height: deviceHeight * 0.24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/audiohatLogo.png",fit: BoxFit.fill,),
                ),
                SizedBox(height: deviceHeight*.05,),
                Flexible(flex: 1, child: child),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
