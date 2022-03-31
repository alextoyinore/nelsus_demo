import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/navigation.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/widgets/nelsus_button.dart';
import 'package:nelsus/widgets/nelsus_text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Login key
  final _loginKey = GlobalKey<FormState>();

  void submitForm() {
    if (_loginKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text(LoginSuccessMessage, style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
      );
      goToHome(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SafeArea(
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
                    key: _loginKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            LoginPageTitle,
                            style: TextStyle(
                                color: Primary,
                                fontSize: 40,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 30),
                          // Matric Number
                          NelsusTextField(label: IDNumberFieldLabel),
                          const SizedBox(height: 30),
                          // Matric Number
                          NelsusTextField(
                              label: PasswordFieldLabel, isPassword: true),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              goToSignUp(context);
                            },
                            child: NelsusButton(
                                text: 'Continue', action: submitForm),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account? '),
                              GestureDetector(
                                onTap: () {
                                  goToSignUp(context);
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
