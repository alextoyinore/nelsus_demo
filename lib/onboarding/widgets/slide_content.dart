import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';

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
                color: NelsusGreenLight,
                child: Text(
                  widget.text,
                  style: const TextStyle(
                      color: NelsusGreen,
                      fontSize: 30,
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
                  color: NelsusGreenLight,
                  image: DecorationImage(
                    image: AssetImage('assets/images/onboarding_pic' +
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
          bottom: MediaQuery.of(context).size.height / 6,
          left: MediaQuery.of(context).size.width / 7,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 4,
                      vertical: 20),
                  decoration: const BoxDecoration(
                      color: NelsusGreen,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0)
                      ]),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(children: [
                const Text(
                  OnboardingSlidesButtonUnderMessage,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(SignupLabel,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline)),
                )
              ]),
            ],
          ),
        )
      ],
    );
  }
}
