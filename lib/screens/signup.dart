import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/widgets/nelsus_button.dart';
import 'package:nelsus/widgets/nelsus_text_field.dart';

import '../helpers/colors.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //final notNewUser = ModalRoute.of(context)!.settings.arguments;
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
                        'Create Account',
                        style: TextStyle(
                            color: Primary,
                            fontSize: 40,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 30),
                      NelsusTextField(label: 'Name'),
                      const SizedBox(height: 30),
                      // Matric Number
                      NelsusTextField(label: 'Identification Number'),
                      const SizedBox(height: 30),
                      // Matric Number
                      NelsusTextField(label: 'Password', isPassword: true),
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
                          const Text('Already have an account? '),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                  //settings: const RouteSettings(arguments: null),
                                ),
                              );
                            },
                            child: const Text(
                              LoginLabel,
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
