import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

abstract class NelsusAlerts {
  static Success(BuildContext context, String message) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Primary,
              title: const Text('Success'),
              content: Text(message, style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Continue',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ));
  }

  static Info(BuildContext context, String message, String title) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Tetiary.withRed(50),
              title: Text(title, style: TextStyle(color: Colors.white)),
              content: Text(message, style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Continue',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ));
  }
}
