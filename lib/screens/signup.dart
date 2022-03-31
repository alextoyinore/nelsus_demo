import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nelsus/helpers/navigation.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/widgets/nelsus_button.dart';
import 'package:nelsus/widgets/nelsus_text_field.dart';

import '../helpers/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _createAccountKey = GlobalKey<FormState>();

  void submitForm() {
    if (_createAccountKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(AccountCreationSuccessMessage,
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
      );
      goToLogin(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    //final notNewUser = ModalRoute.of(context)!.settings.arguments;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    key: _createAccountKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            SignUpPageTitle,
                            style: TextStyle(
                                color: Primary,
                                fontSize: 40,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 30),
                          NelsusTextField(label: NameFieldLabel),
                          const SizedBox(height: 30),
                          // Matric Number
                          NelsusTextField(label: IDNumberFieldLabel),
                          const SizedBox(height: 30),
                          // Matric Number
                          NelsusTextField(
                              label: PasswordFieldLabel, isPassword: true),
                          const SizedBox(height: 30),
                          NelsusButton(
                            text: 'Continue',
                            action: submitForm,
                          ),

                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have an account? '),
                              GestureDetector(
                                onTap: () => goToLogin(context),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
