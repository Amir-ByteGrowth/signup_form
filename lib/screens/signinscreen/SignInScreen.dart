import 'package:flutter/material.dart';

import 'SignInBody.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SignInBody());
  }
}
