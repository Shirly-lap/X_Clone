import 'package:flutter/material.dart';

class TwitterBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.white),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.white),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline, color: Colors.white),
          label: "",
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}
