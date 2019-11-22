import 'components/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/settings.dart';

class IGApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IGApp();
  }
}

class _IGApp extends State<IGApp> {
  int indexTab = 0;
  final List<Widget> widgetsChildren = [Home(), Settings()];

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
            items: [
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
                  )),
            ],
          ),
        ));
  }
}
