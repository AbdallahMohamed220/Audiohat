import 'package:audiohat/UI/widgets/actionButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../main.dart';
import 'auth_bg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:18),
          ActionButton(
            color: Theme.of(context).primaryColor,
            label: 'دخول',
            onPressed: () {},
            buttonWidth: deviceWidth * 0.6,
          ),
          SizedBox(height:18),
          ActionButton(
            color: Theme.of(context).accentColor,
            label: 'مستخدم جديد',
            onPressed: () {},
            buttonWidth: deviceWidth * 0.6,
          ),
          SizedBox(height:18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'تخطى',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: SvgPicture.asset(
                  'assets/images/arrows.svg',
                  fit: BoxFit.cover,
                  color: Theme.of(context).accentColor,
                  width: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
