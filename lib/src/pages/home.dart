import 'package:flutter/material.dart';
import 'package:ig_skills/src/components/floating_action_button.dart';
import 'package:ig_skills/src/components/navigation_bar.dart';
import '../components/skills_card.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTab = 0;

  onTappedTab(int index) {
    setState(() {
      if (index == 1) {
        Navigator.pushNamed(context, "Settings");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: profile(context),
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

Widget profile(BuildContext context) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            width: 3100,
            height: 350,
            child: CustomPaint(
              painter: MyPainter(),
            ),
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4 - 120,
            ),
            width: 130.0,
            height: 130.0,
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    //degradado
                    blurRadius: 15.0,
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://www.nunuoropesa.com/wp-content/uploads/2018/03/profile-img-1.jpg"))),
          )),
          Center(
              child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.6,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Sebastian Beleño",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontFamily: "Roboto", fontSize: 40),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(top: 10, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("Fronend Dev",
                                      style: TextStyle(fontSize: 25)),
                                  Text("Cargo",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "RobotoRegular",
                                          color: Colors.black54)),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 20),
                            child: Column(
                              children: <Widget>[
                                Text("2", style: TextStyle(fontSize: 25)),
                                Text("Level",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "RobotoRegular",
                                        color: Colors.black54))
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("3", style: TextStyle(fontSize: 25)),
                                  Text("Skills",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "RobotoRegular",
                                          color: Colors.black54)),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ))),
        ],
      ),
      Expanded(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3 + 82.8,
            child: ListView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: SkillsCard(),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: SkillsCard(),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: SkillsCard(),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: SkillsCard(),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}

//Clase que hace el dibujo de AppBar.
class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
