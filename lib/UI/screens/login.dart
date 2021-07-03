import 'package:audiohat/UI/widgets/actionButton.dart';
import 'package:audiohat/UI/widgets/input.dart';
import 'package:audiohat/UI/widgets/titleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../main.dart';
import 'auth_bg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TitleWidget(label: 'مرحبا بك'),
                ],
              ),
            ),
            SizedBox(height:18),
            Container(
              width: deviceWidth * 0.8,
              height: deviceHeight * 0.08,
              child:  Input(hint: 'البريد الالكترونى',),
            ),
            SizedBox(height:18),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: deviceWidth * 0.8,
              height: deviceHeight * 0.08,
              child:  Input(hint: 'كلمة المرور',),
            ),
            SizedBox(height:18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40),
              child: Row(
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:18),
            ActionButton(
              color: Theme.of(context).primaryColor,
              label: 'دخول',
              onPressed: () {},
              buttonWidth: deviceWidth * 0.8,
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
      ),
    );
  }
}
