import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/screens/signup.dart';
import 'package:nelsus/widgets/nelsus_button.dart';

import '../../login.dart';

class OnboardingSlidesContent extends StatefulWidget {
  OnboardingSlidesContent({
    Key? key,
    required this.text,
    required this.imageNumber,
  }) : super(key: key);

  String text;
  int imageNumber;

  @override
  _OnboardingSlidesContentState createState() =>
      _OnboardingSlidesContentState();
}

class _OnboardingSlidesContentState extends State<OnboardingSlidesContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 10,
                    vertical: 30),
                width: MediaQuery.of(context).size.width,
                color: SecondaryLigtBackground,
                child: Text(
                  widget.text,
                  style: const TextStyle(
                      color: Primary,
                      fontSize: 24,
                      height: 1.5,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 32, left: 0, right: 0, bottom: 0),
                decoration: BoxDecoration(
                  color: SecondaryLigtBackground,
                  image: DecorationImage(
                    image: AssetImage('assets/images/nurse' +
                        widget.imageNumber.toString() +
                        '.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          width: MediaQuery.of(context).size.width * .85,
          bottom: MediaQuery.of(context).size.height / 8,
          //left: MediaQuery.of(context).size.width / 7,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                      settings: const RouteSettings(arguments: 'NotNew'),
                    ),
                  );
                },
                child: NelsusButton(text: 'Continue'),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  OnboardingSlidesButtonUnderMessage,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                        settings: const RouteSettings(arguments: 'NotNew'),
                      ),
                    );
                  },
                  child: const Text(LoginLabel,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline)),
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
