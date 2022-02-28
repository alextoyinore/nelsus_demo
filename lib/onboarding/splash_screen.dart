import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/onboarding/onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, onboardingSlides);
  }

  onboardingSlides() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnboardingSlides()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/nelsus.png',
                    height: 50,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      ProductName,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/splash_screen_outlines.png'),
            )
          ],
        ),
      ),
    );
  }
}
