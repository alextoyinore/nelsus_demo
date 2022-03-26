import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/widgets/alerts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: PrimaryButton,
          elevation: 0,
          leading: const Icon(Icons.apps, size: 30),
          title: Image.asset(
            'assets/images/inurse.png',
            width: 70,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  NelsusAlerts.Info(context, AboutMessage, 'About iNurse');
                },
                child: const Icon(Icons.wb_incandescent, size: 30
                    //color: Primary,
                    ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(),
          ),
        ),
      ),
    );
  }
}
