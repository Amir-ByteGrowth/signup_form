import 'package:flutter/material.dart';

import 'body.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: LandingBody(size: size),
      ),
    );
  }
}


