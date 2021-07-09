import 'package:InstitutesBulliten/src/views/ui/FavouritesScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/HomeScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/Profile.dart';
import 'package:InstitutesBulliten/src/views/ui/SearchScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/Settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    Profile(),
    Settings(),
    PlaceholderWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff1BBC9B),
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xff1BBC9B),
            ),
            title: Text(
              'Search',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xff1BBC9B),
            ),
            title: Text(
              'Favourite',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff1BBC9B),
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xff1BBC9B),
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
