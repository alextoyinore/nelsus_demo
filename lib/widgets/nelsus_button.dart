import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class NelsusButton extends StatelessWidget {
  NelsusButton({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 4, vertical: 20),
      decoration: const BoxDecoration(
        color: PrimaryButton,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
    );
  }
}
