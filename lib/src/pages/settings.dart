import 'package:flutter/material.dart';
import 'package:ig_skills/src/components/navigation_bar.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int indexTab = 1;

  onTappedTab(int index) {
    setState(() {
      if (index == 0) {
        Navigator.pushNamed(context, "Home");
      }
    });
  }

  logOut() {
    Navigator.pushNamed(context, "LoginPage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Roboto", fontSize: 17),
                ),
                onPressed: logOut,
              )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 60, 152, 255),
        ),
        body: Center(
          child: Text("Settings"),
        ),
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
