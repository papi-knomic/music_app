import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/screens/fave.dart';
import 'package:music_app/screens/home.dart';
import 'package:music_app/screens/search.dart';

class HomeWrapper extends StatefulWidget {
  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Boxicons.bx_menu_alt_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      body: IndexedStack(
        children: [Home(), Search(), Fave()],
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 0 ? Icons.home_filled : Icons.home_outlined,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 1 ? LineIcons.search : LineIcons.search,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 2 ? LineIcons.heartAlt : LineIcons.heart,
                color: Colors.white,
              ),
              label: '')
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
