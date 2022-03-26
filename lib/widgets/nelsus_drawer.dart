import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';

class NelsusDrawer extends StatelessWidget {
  const NelsusDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: PrimaryButton),
              child: Row(children: [])),
          ListTile(
            title: const Text('Favourites'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('My Library'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Faculty'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
