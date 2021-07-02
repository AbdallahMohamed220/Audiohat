import 'package:audiohat/UI/screens/chooseTypeOfAcount.dart';
import 'package:audiohat/UI/widgets/titleWidget.dart';
import 'package:audiohat/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ChooseTypeOfAccout(),
            ),
          );
        },
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: deviceHeight,
                width: deviceWidth,
                child: Image.asset('assets/images/spalahImage.png'),
              ),
              Positioned(
                top: 40,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey[100],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff00000029),
                            offset: Offset(1, 2),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/audiohatLogo.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Container(
                    width: 150,
                    height: 80,
                    child: TitleWidget(
                      label: 'عندما تدب الحياة في كتاب',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
