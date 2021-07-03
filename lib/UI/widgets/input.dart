import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String hint;
  const Input({Key? key,required this.hint}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xff9F9F9F),
          height: 1.3,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(
              color: Color(0xffBFBFBF).withOpacity(0.5),
              width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
              color: Color(0xffBFBFBF).withOpacity(0.5)),
        ),
      ),
    );
  }
}
