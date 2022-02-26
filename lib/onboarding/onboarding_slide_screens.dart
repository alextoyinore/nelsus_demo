import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

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
              child: Stack(
                children: [
                  Container(
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
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 6,
                    left: MediaQuery.of(context).size.width / 7,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 4,
                                vertical: 20),
                            decoration: const BoxDecoration(
                              color: NelsusGreen,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
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
            )
          ],
        ),
      ),
    );
  }
}
