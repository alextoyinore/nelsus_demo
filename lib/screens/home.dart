import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/strings.dart';
import 'package:nelsus/screens/views/home/homeview.dart';
import 'package:nelsus/screens/views/home/resourceview.dart';
import 'package:nelsus/screens/views/home/widgets/home_modal_bottom.dart';
import 'package:nelsus/widgets/alerts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static TextStyle optionStyle = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.w300, color: Colors.black54);

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const ResourceView(),
    const Center(
      child: Text('Page under construction'),
    ),
    const Center(
      child: Text('Page under construction'),
    ),
    const Center(
      child: Text('Page under construction'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
          title: Image.asset(
            'assets/images/inurse.png',
            width: 120,
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
        body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Resources',
                backgroundColor: Primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
                backgroundColor: Primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
                backgroundColor: Primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Primary),
          ],
          currentIndex: _selectedIndex,
          //selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
