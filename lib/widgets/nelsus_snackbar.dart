import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class NelsusSuccessSnackBar extends StatelessWidget {
  NelsusSuccessSnackBar({Key? key, required this.message}) : super(key: key);

  String message;

  @override
  Widget build(BuildContext context) {
    return SnackBar(backgroundColor: Primary, content: Text(message));
  }
}

class NelsusErrorSnackBar extends StatelessWidget {
  NelsusErrorSnackBar({Key? key, required this.message}) : super(key: key);

  String message;

  @override
  Widget build(BuildContext context) {
    return SnackBar(backgroundColor: Tetiary, content: Text(message));
  }
}
