import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBar {
  List<BottomNavigationBarItem> getBotton() {
    List<BottomNavigationBarItem> icons = [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: 30.0,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
            size: 35.0,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ))
    ];
    return icons;
  }
}

final navigationBar = NavigationBar();
