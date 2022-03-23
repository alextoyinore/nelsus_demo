import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nelsus/widgets/nelsus_header.dart';

import 'onboarding_screens.dart';

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
    var duration = const Duration(seconds: 4);
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
              child: NelsusHeader(),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset(
                'assets/images/splash_screen_outlines.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
