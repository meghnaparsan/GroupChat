import 'package:Groupie/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenName = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'Logo',
                  child: Container(
                    child: Image.asset(
                      'images/logo.jpg',
                    ),
                    height: 50.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ColorizeAnimatedTextKit(
                  colors: [
                    Color(0xff6BC8EA),
                    Color(0xffA0FAEC),
                    Color(0xff2EACC2),
                    Color(0xff66D4CB),
                    Color(0xffC2FDF6),
                  ],
                  text: ['Groupie!'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Color(0xff52B9DF),
              title: "Log In",
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.screenName);
              },
            ),
            RoundedButton(
              color: Color(0xff91B6D6),
              title: "Register",
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
