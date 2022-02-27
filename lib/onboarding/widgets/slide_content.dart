import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class OnboardingSlidesContent extends StatefulWidget {
  const OnboardingSlidesContent({Key? key}) : super(key: key);

  @override
  _OnboardingSlidesContentState createState() =>
      _OnboardingSlidesContentState();
}

class _OnboardingSlidesContentState extends State<OnboardingSlidesContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5,
                      vertical: 30),
                  width: MediaQuery.of(context).size.width,
                  color: NelsusGreenLight,
                  child: const Text(
                    'Your library on your device.',
                    style: TextStyle(
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
                  decoration: const BoxDecoration(
                    color: NelsusGreenLight,
                    image: DecorationImage(
                      image: AssetImage('assets/images/onboarding_pic1.png'),
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
                    ),
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
                    'Not my first time here! ',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text('Sign In',
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
      ),
    );
  }
}
