import 'package:audiohat/UI/widgets/actionButton.dart';
import 'package:audiohat/UI/widgets/customeCheckBox.dart';
import 'package:audiohat/UI/widgets/input.dart';
import 'package:audiohat/UI/widgets/titleWidget.dart';
import 'package:audiohat/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'auth_bg.dart';

class RegisterScreen extends StatelessWidget {
  final bool _value = false;

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TitleWidget(label: 'تسجيل'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.08,
                child:  Input(hint: 'الاسم',),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.08,
                child:  Input(hint: 'البريد الالكترونى',),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.08,
                child:  Input(hint: 'كلمة المرور',),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'اوافق على الشروط والاحكام',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).accentColor,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    CustomecheckBox(
                      value: _value,
                    )
                  ],
                ),
              ),
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
              SizedBox(height:18),
            ],
          ),
        ),
      ),
    );
  }
}
