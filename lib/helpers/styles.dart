import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class NelsusStyles {
  static const headerStyle = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 24,
  );

  static const headerLinkStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 24,
    color: PrimaryButton,
    //decoration: TextDecoration.underline,
  );

  static const titleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static const bodyStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );

  static const bookReadStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 24,
    height: 1.6,
  );

  static const textLinkStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 20,
    color: Primary,
  );
}
