import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String label;
  TitleWidget({this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: MediaQuery.of(context).textScaleFactor * 24,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
