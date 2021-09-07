import 'package:flutter/material.dart';
import 'package:signup_form/screens/signinscreen/SignInScreen.dart';
import 'package:signup_form/screens/widgets/button.dart';

import '../constants.dart';
import 'dart:math' as math;
class LandingBody extends StatelessWidget {
  const LandingBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/obafemi.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Container(
            width: size.width * 0.9,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.04),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "CREATE ANY ",
                      style: kHeadingTextStyle.copyWith(
                          fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: "LYRICS",
                      style: kHeadingTextStyle.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.pinkAccent))
                ]),
              ),
            ),
          ),
          Container(
            width: size.width * 0.9,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "FROM YOUR PHONE",
                        style: kHeadingTextStyle.copyWith(
                            fontWeight: FontWeight.normal))
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.6,
          ),
          Text(
            "Join the comunity",
            style: kHeadingTextStyle.copyWith(
                fontWeight: FontWeight.normal, fontSize: 20),
          ),
          Text(
            "The ultimate lyrics maker app",
            style:
            kContentTextStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Button(size: size,title: "Get Started",press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
          },)
        ],
      ),
    );
  }
}

