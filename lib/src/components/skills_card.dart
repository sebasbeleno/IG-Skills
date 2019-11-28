import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    List<Color> color3 = [
      Color.fromARGB(255, 255, 204, 94),
      Color.fromARGB(255, 225, 166, 18)
    ];
    Color colorTexLow = Color.fromARGB(255, 255, 255, 255);

    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 190,
      margin: EdgeInsets.only(
        left: 40,
        right: 40,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 10), blurRadius: 10)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: color3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Area",
                    style: TextStyle(
                        fontFamily: "Roboto", fontSize: 20, color: colorTexLow),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Technology",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: colorTexLow),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Level",
                    style: TextStyle(
                        fontFamily: "Roboto", fontSize: 20, color: colorTexLow),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Version",
                    style: TextStyle(
                        fontFamily: "Roboto", fontSize: 20, color: colorTexLow),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "${data.year.toString()}-${data.month.toString()}-${data.day.toString()}",
                    style: TextStyle(
                        fontFamily: "Roboto", fontSize: 12, color: colorTexLow),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
