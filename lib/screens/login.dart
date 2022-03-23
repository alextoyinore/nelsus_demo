import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/screens/signup.dart';
import 'package:nelsus/widgets/nelsus_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset(
                'assets/images/splash_screen_outlines.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Form(
                  child: Column(
                    children: [
                      const Text(
                        'Log in',
                        style: TextStyle(
                            color: Primary,
                            fontSize: 40,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 30),
                      // Matric Number
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Identification Nummber',
                          //helperText: 'Please enter your own matric no',
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
                            return 'Please enter your ID number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      // Matric Number
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          //helperText: 'Make it secure and memorable',
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
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                              //settings: const RouteSettings(arguments: null),
                            ),
                          );
                        },
                        child: NelsusButton(text: 'Continue'),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account? '),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                  //settings: const RouteSettings(arguments: null),
                                ),
                              );
                            },
                            child: const Text(
                              SignupLabel,
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
