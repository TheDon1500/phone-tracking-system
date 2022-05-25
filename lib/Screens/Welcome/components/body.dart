import 'package:email_password_login/Screens/Welcome/components/background.dart';
import 'package:email_password_login/Screens/login_screen.dart';
import 'package:email_password_login/Screens/registration_screen.dart';
import 'package:email_password_login/constraints.dart';
import 'package:email_password_login/rounded_button.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provides the total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: "PHONE TRACKING SYSTEM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            //SvgPicture.asset("assets/icons/chat.svg")
            Image.asset(
              "assets/images/phone.jpg",
              height: size.height * 0.28,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegistrationScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
