import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_form/screens/widgets/button.dart';

import '../constants.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/soundtrapunsplash.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.75)),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.4,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("LYRICS",
                          style: kHeadingTextStyle.copyWith(
                              fontSize: 30, color: Colors.pink)),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Transform(
                        transform: Matrix4.rotationY(math.pi),
                        alignment: Alignment.center,
                        child: Text(
                          "MAKER",
                          style: kHeadingTextStyle.copyWith(
                              fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  InputFieldSignIn(topPadding: 15, labelTxt: "Full name"),
                  InputFieldSignIn(topPadding: 10, labelTxt: "Email"),
                  InputFieldSignIn(topPadding: 10, labelTxt: "Password"),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Button(
                    size: size,
                    title: "Join Us",
                    press: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "No credit card required",
                      style: kContentTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.05),
                    child: Divider(
                      color: kPrimaryColor,
                      indent: 40,
                      endIndent: 40,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaButton(
                        imagePath: "assets/icons/fb.png",
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: size.width * 0.07,
                      ),
                      SocialMediaButton(
                        imagePath: "assets/icons/google.png",
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      "By continuouing you agree to accept our trems and privacy police",
                      style: kContentTextStyle.copyWith(
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already a member?", style: kContentTextStyle),
                      TextSpan(
                        text: " Sign in", style: kSignInTextStyle
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key key,
    this.imagePath,
    this.color,
  }) : super(key: key);

  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      borderSide: BorderSide(width: 2, color: color),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Image.asset(imagePath),
    );
  }
}

class InputFieldSignIn extends StatelessWidget {
  const InputFieldSignIn({
    Key key,
    this.topPadding,
    this.labelTxt,
  }) : super(key: key);

  final double topPadding;
  final String labelTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: labelTxt == "Password"
              ? Icon(
                  Icons.visibility,
                  color: Colors.pink,
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              borderSide: BorderSide(color: kPrimaryColor, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              borderSide: BorderSide(width: 2, color: kPrimaryColor)),
          labelText: labelTxt,
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
