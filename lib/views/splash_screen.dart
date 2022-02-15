import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'onboard_page.dart';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({Key? key}) : super(key: key);

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreenFirst> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnboardPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadedSlideAnimation(
          child: Center(
            child: Image(
              image: AssetImage('images/kaina2.png'),
              height: 200,
              width: 200,
            ),
          ),
          beginOffset: const Offset(0.0, 5.0),
          endOffset: const Offset(0.0, 0.0),
        ),
      ],
    ));
  }
}
