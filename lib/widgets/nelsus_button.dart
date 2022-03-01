import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class NelsusButton extends StatelessWidget {
  NelsusButton({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 4, vertical: 20),
      decoration: const BoxDecoration(
          color: NelsusGreen,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 3.0),
                blurRadius: 1.0,
                spreadRadius: 1.0)
          ]),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
      ),
    );
  }
}
