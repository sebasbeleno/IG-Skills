import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _card = Stack(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 200,
        margin: EdgeInsets.only(left: 40, right: 40),
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 10), blurRadius: 10)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 255, 204, 94),
                  Color.fromARGB(255, 225, 166, 18),
                ]),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Hice el curso de Git y GitHub",
                style: TextStyle(fontSize: 20),
              ),
              margin: EdgeInsets.only(bottom: 100),
            ),
            Container(
              child: Text(
                "Today",
                style: TextStyle(
                    fontFamily: "RobotoRegular", color: Colors.black38),
              ),
            )
          ],
        ),
      ),
    ]);

    return _card;
  }
}
