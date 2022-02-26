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
      body: Column(
        children: [
          Column(
            children: [
              Image.asset(""),
              Text("Nigerian Electronic Library for University Students")
            ],
          )
        ],
      ),
    );
  }
}
