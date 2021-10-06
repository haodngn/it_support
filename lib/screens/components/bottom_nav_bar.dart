import 'package:flutter/material.dart';
import 'package:it_support/constant.dart';
import 'package:it_support/screens/home_screen.dart';
import 'package:it_support/screens/it_support_list_screen.dart';
import 'package:it_support/screens/message_screen.dart';
import 'package:it_support/screens/profile_screen.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final screens = [
    HomeScreenCustomer(),
    ListItScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[currentIndex],
    bottomNavigationBar: SizedBox(
      height: 45,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackgroundColor,
        selectedItemColor: kBlueColor,
        showUnselectedLabels: false,
        iconSize: 25,
        selectedFontSize: 8,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: "List ITSupport",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    ),
  );
}