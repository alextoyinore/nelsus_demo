import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nelsus/helpers/navigation.dart';
import 'package:nelsus/helpers/styles.dart';
import 'package:nelsus/screens/views/bookgrid.dart';

import '../../helpers/colors.dart';
import '../../helpers/strings.dart';
import '../../widgets/alerts.dart';
import 'home/widgets/home_modal_bottom.dart';

class GridPage extends StatefulWidget {
  GridPage({Key? key, required this.view, this.description = ''})
      : super(key: key);

  BookGrid view;
  String description;

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Primary,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(0),
                  context: context,
                  builder: (context) {
                    return const HomeModalBottom();
                  });
            },
            child: const Icon(Icons.apps, size: 40)),
        title: GestureDetector(
          onTap: () {
            goToHome(context);
          },
          child: Image.asset(
            'assets/images/inurse.png',
            width: 120,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                NelsusAlerts.Info(context, AboutMessage, 'About iNurse');
              },
              child: const Icon(Icons.info_outline, size: 30
                  //color: Primary,
                  ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(widget.title, style: NelsusStyles.headerStyle),
            const SizedBox(height: 20),
            Text(widget.description, style: NelsusStyles.bodyStyle),
            const SizedBox(height: 20),
            widget.view,
            const SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [],
      ),
    );
  }
}
