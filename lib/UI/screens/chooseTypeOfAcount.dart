import 'package:audiohat/UI/screens/register.dart';
import 'package:audiohat/UI/widgets/actionButton.dart';
import 'package:audiohat/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseTypeOfAccout extends StatelessWidget {
  const ChooseTypeOfAccout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => RegisterScreen(),
          ),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                height: deviceHeight,
                width: deviceWidth,
                color: Theme.of(context).primaryColor,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    width: 182,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    // child: Image.asset(
                    //   'assets/images/audiohatLogo.png',
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  'assets/images/clipper.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: deviceHeight * 0.5,
                left: deviceWidth / 5,
                child: ActionButton(
                  color: Theme.of(context).primaryColor,
                  label: 'دخول',
                  onPressed: () {},
                  buttonWidth: deviceWidth * 0.6,
                ),
              ),
              Positioned(
                top: deviceHeight * 0.6,
                left: deviceWidth / 5,
                child: ActionButton(
                  color: Theme.of(context).accentColor,
                  label: 'مستخدم جديد',
                  onPressed: () {},
                  buttonWidth: deviceWidth * 0.6,
                ),
              ),
              Positioned(
                top: deviceHeight * 0.72,
                left: deviceWidth / 2.3,
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
