import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';

class NelsusHeader extends StatelessWidget {
  NelsusHeader({Key? key, this.showProductName = true}) : super(key: key);

  bool showProductName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/inurse.png',
          height: 60,
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: showProductName
              ? const Text(
                  ProductName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Primary,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                )
              : null,
        ),
      ],
    );
  }
}
