import 'package:flutter/material.dart';
import 'package:nelsus/onboarding/widgets/slide_content.dart';

class NelsusOnboardingSlides extends StatefulWidget {
  const NelsusOnboardingSlides({Key? key}) : super(key: key);

  @override
  _NelsusOnboardingSlidesState createState() => _NelsusOnboardingSlidesState();
}

class _NelsusOnboardingSlidesState extends State<NelsusOnboardingSlides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/nelsus.png',
                    height: 40,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Nigerian Electronic Library Series for University Students",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            OnboardingSlidesContent()
          ],
        ),
      ),
    );
  }
}
