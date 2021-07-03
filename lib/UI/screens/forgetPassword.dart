import 'package:audiohat/UI/widgets/actionButton.dart';
import 'package:audiohat/UI/widgets/titleWidget.dart';
import 'package:audiohat/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: deviceHeight,
            width: deviceWidth,
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
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      // child: Image.asset(
                      //   'assets/images/audiohatLogo.png',
                      //   fit: BoxFit.fitWidth,
                      // ),
                    ),
                  ),
                ),
                Positioned(
                  top: deviceHeight * 0.15,
                  child: Container(
                    width: deviceWidth,
                    height: deviceHeight,
                    child: SvgPicture.asset(
                      'assets/images/curve.svg',
                      fit: BoxFit.cover,
                      width: 12,
                      color: Color(0xffFAFAFA),
                    ),
                  ),
                ),
                Positioned(
                  top: deviceHeight * 0.45,
                  right: deviceWidth / 10,
                  child: TitleWidget(label: 'نسيت كلمة المرور'),
                ),
                Positioned(
                    top: deviceHeight * 0.55,
                    right: deviceWidth / 9,
                    child: Text(
                      'من فضلك ادخل البريد الالكترونى',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0Xff404040),
                      ),
                    )),
                Positioned(
                  top: deviceHeight * 0.6,
                  right: deviceWidth * 0.09,
                  child: Container(
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
                ),
                Positioned(
                  top: deviceHeight * 0.72,
                  left: deviceWidth / 9,
                  child: ActionButton(
                    color: Theme.of(context).primaryColor,
                    label: 'ارسال',
                    onPressed: () {},
                    buttonWidth: deviceWidth * 0.8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
