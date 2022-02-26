import 'package:flutter/material.dart';

class NelsusOnboarding extends StatefulWidget {
  const NelsusOnboarding({Key? key}) : super(key: key);

  @override
  _NelsusOnboardingState createState() => _NelsusOnboardingState();
}

class _NelsusOnboardingState extends State<NelsusOnboarding> {
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
                      "Nigerian Electronic Library Series for University Students",
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
