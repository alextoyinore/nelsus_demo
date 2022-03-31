import 'package:flutter/material.dart';
import 'package:nelsus/helpers/styles.dart';

class NelsusTextButton extends StatelessWidget {
  final Function action;
  String label;

  NelsusTextButton({Key? key, required this.label, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action(),
        child: Text(
          label,
          style: NelsusStyles.headerLinkStyle,
        ));
  }
}
