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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 80,
                  color: Colors.blue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: FlatButton(
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 20),
                        ),
                        onPressed: logOut,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.only(top: 25, left: 15),
                  decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          //degradado
                          blurRadius: 15.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.nunuoropesa.com/wp-content/uploads/2018/03/profile-img-1.jpg"))),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text("Settings", style: TextStyle(fontSize: 40),),
                  ),
                  Container(
                    child: Text("Report a problem", style: TextStyle(fontSize: 25, color: Colors.black45),),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
                      child: Text("Nada por ahora uwur", style: TextStyle(fontSize: 20, color: Colors.black54, fontFamily: "RobotoRegular"),),
                    )
                  )
                ],
              ),
            )
          ],
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
