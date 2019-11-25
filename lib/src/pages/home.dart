import 'package:flutter/material.dart';
import '../components/skills_card.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              width: 150.0,
              height: 150.0,
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
                      top: MediaQuery.of(context).size.height / 3.3,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Sebastian Beleño",
                              style:
                                  TextStyle(fontFamily: "Roboto", fontSize: 50),
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
        Center(
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
        )
      ],
    );
  }
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
