import 'package:flutter/material.dart';
import 'package:nelsus/widgets/nelsus_button.dart';
import 'package:nelsus/widgets/nelsus_header.dart';

import 'helpers/colors.dart';

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  _LoginSignUpState createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final notNewUser = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: NelsusHeader(showProductName: false),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  // Text(
                  //   'Welcome',
                  //   style: TextStyle(
                  //       color: NelsusGreen,
                  //       fontSize: 60,
                  //       fontWeight: FontWeight.w300),
                  // ),
                  Text(
                    'Login/Sign-Up',
                    style: TextStyle(
                        color: NelsusGreen,
                        fontSize: 40,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 54.0),
              child: Form(
                key: _loginFormKey,
                child: Column(
                  children: [
                    // const Text(
                    //   'Your name',
                    //   style:
                    //       TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    // ),
                    notNewUser != null
                        ? TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Your name',
                              helperText:
                                  'Better if this matches the name attached to your matric number',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0))),
                            ),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w300),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          )
                        : const Text(
                            'Welcome Back!',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                    const SizedBox(height: 20),
                    // Matric Number
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Matric Number',
                        helperText: 'Please enter your own matric no',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w300),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    // Matric Number
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        helperText: 'Make it secure and memorable',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w300),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginSignUp(),
                            //settings: const RouteSettings(arguments: null),
                          ),
                        );
                      },
                      child: NelsusButton(text: 'Continue'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
