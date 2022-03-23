import 'package:flutter/material.dart';

class NelsusTextField extends StatelessWidget {
  NelsusTextField({Key? key, required this.label, this.isPassword = false})
      : super(key: key);

  String label;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: label,
        //helperText:
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
      obscureText: isPassword ? true : false,
      obscuringCharacter: '*',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
      // The validator receives the text that the user has entered.
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ' + label;
        }
        return null;
      },
    );
  }
}
