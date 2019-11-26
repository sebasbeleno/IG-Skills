import 'components/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'components/navigation_bar.dart';
import 'pages/home.dart';
import '../src/pages/add_skills.dart';
import 'pages/settings.dart';

class IGApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IGApp();
  }
}

class _IGApp extends State<IGApp> {
  int indexTab = 0;
  final List<Widget> widgetsChildren = [
    Home(),
    Settings(),
  ];

  onTappedTab(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildren[indexTab],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingNavButtom(),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blue,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
              onTap: onTappedTab,
              currentIndex: indexTab,
              items: navigationBar.getBotton()),
        ));
  }
}
