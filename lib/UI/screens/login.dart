import 'package:audiohat/UI/widgets/actionButton.dart';
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
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'البريد الالكترونى',
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
              ),
            ),
            SizedBox(height:18),
            Container(
              width: deviceWidth * 0.8,
              height: deviceHeight * 0.08,
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
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
              ),
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
