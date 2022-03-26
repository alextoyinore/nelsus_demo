import 'package:flutter/material.dart';
import 'package:nelsus/screens/home.dart';
import 'package:nelsus/screens/login.dart';
import 'package:nelsus/screens/signup.dart';

void goToLogin(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Login(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToSignUp(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SignUp(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Home(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}
