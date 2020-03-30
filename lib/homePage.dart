import 'package:ecocycle/screens/leader.dart';
import 'package:ecocycle/screens/mainpage.dart';
import 'package:ecocycle/screens/profile.dart';
import 'package:ecocycle/screens/post_page.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [
    ProfilePage(),
    LeaderPage(),
    PostPage(),
  ];

  void onTabTapped(int index){
    setState(() {
     _currentIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        elevation: 0,
        iconSize: 32,

        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.pagelines),
            title: Text("Mainpage"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.signal),
            title: Text("Signal"),
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}