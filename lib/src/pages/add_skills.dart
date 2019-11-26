import 'package:flutter/material.dart';
import 'package:ig_skills/src/components/navigation_bar.dart';

class AddSkill extends StatefulWidget {
  AddSkill({Key key}) : super(key: key);

  @override
  _AddSkillState createState() => _AddSkillState();
}

class _AddSkillState extends State<AddSkill> {
  int selectedRadio1;
  int selectedRadio2;
  String area;
  String level;
  String technology;
  String version;
  List<Color> color;
  Color colorTex;

  int indexTab = 0;

  onTappedTab(int index) {
    setState(() {
      if (index == 1) {
        Navigator.pushNamed(context, "Settings");
      } else {
        Navigator.pushNamed(context, "Home");
      }
    });
  }

  List<Color> color1 = [
    Color.fromARGB(255, 240, 96, 64),
    Color.fromARGB(255, 153, 44, 33),
  ];
  List<Color> color2 = [
    Color.fromARGB(255, 228, 228, 228),
    Color.fromARGB(255, 164, 164, 164),
  ];
  List<Color> color3 = [
    Color.fromARGB(255, 255, 204, 94),
    Color.fromARGB(255, 225, 166, 18)
  ];
  List<Color> colorIni = [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 225, 255, 255),
  ];

  Color colorTexMiddle = Color.fromARGB(255, 73, 73, 73);
  Color colorTexHigh = Color.fromARGB(255, 73, 73, 73);
  Color colorTexLow = Color.fromARGB(255, 255, 255, 255);

  @override
  void initState() {
    super.initState();
    selectedRadio2 = 0;
    selectedRadio1 = 0;
    area = "Area:";
    level = "Level:";
    technology = "Technology:";
    version = "Version:";
    color = colorIni;
    colorTex = Colors.black;
  }

  setSelectedRadio1(int val) {
    setState(() {
      selectedRadio1 = val;
      if (selectedRadio1 == 1) {
        area = "Develops";
      } else {
        area = "Infraestructure";
      }
    });
  }

  setSelectedRadio2(int val) {
    setState(() {
      selectedRadio2 = val;
      if (selectedRadio2 == 1) {
        level = "Low";
        color = color1;
        colorTex = colorTexLow;
      } else if (selectedRadio2 == 2) {
        level = "Middle";
        color = color2;
        colorTex = colorTexMiddle;
      } else {
        level = "High";
        color = color3;
        colorTex = colorTexHigh;
      }
    });
  }

  changeTechnology(String val) {
    setState(() {
      technology = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 60, 152, 255),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Add Skills",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    card(),
                  ],
                ),
                skillsCard(
                    context, area, level, technology, version, color, colorTex)
              ],
            ),
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

  Widget card() {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      color: Color.fromARGB(255, 60, 152, 255),
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Radio(
                    value: 1,
                    groupValue: selectedRadio1,
                    activeColor: Color.fromARGB(255, 41, 55, 66),
                    onChanged: (val) {
                      setSelectedRadio1(val);
                    },
                  ),
                ),
                Text("Develop",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Radio(
                    value: 2,
                    groupValue: selectedRadio1,
                    activeColor: Color.fromARGB(255, 41, 55, 66),
                    onChanged: (val) {
                      setSelectedRadio1(val);
                    },
                  ),
                ),
                Text("Infraestructure",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))
              ],
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  onChanged: changeTechnology,
                  onSaved: (String val) {
                    this.technology = val;
                  },
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  decoration: InputDecoration(
                    hintText: "Tell us, what have you learned",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(200, 255, 255, 255),
                        fontFamily: "Roboto",
                        fontSize: 13),
                    border: InputBorder.none,
                  ),
                )),
            Container(
              child: Divider(
                  color: Color.fromARGB(200, 255, 255, 255), thickness: 1),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            ),
            Container(
              child: Text(
                "Choose your level",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Radio(
                    value: 1,
                    groupValue: selectedRadio2,
                    activeColor: Color.fromARGB(255, 41, 55, 66),
                    onChanged: (val) {
                      setSelectedRadio2(val);
                    },
                  ),
                ),
                Text("Low",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Radio(
                    value: 2,
                    groupValue: selectedRadio2,
                    activeColor: Color.fromARGB(255, 41, 55, 66),
                    onChanged: (val) {
                      setSelectedRadio2(val);
                    },
                  ),
                ),
                Text("Middle",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Radio(
                    value: 3,
                    groupValue: selectedRadio2,
                    activeColor: Color.fromARGB(255, 41, 55, 66),
                    onChanged: (val) {
                      setSelectedRadio2(val);
                    },
                  ),
                ),
                Text("High",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                color: Color.fromARGB(255, 255, 255, 255),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    "Version",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        color: Color.fromARGB(255, 41, 55, 66)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: RaisedButton(
                color: Color.fromARGB(255, 41, 55, 66),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Roboto",
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget skillsCard(context, area, level, technology, version, List<Color> color,
    Color colorText) {
  DateTime data = DateTime.now();

  return Container(
    width: MediaQuery.of(context).size.width / 1.2,
    height: 150,
    margin: EdgeInsets.only(left: 40, right: 40, top: 90),
    decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 10), blurRadius: 10)
        ],
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: color),
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
                  area,
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 20, color: colorText),
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
                    technology,
                    style: TextStyle(
                        fontFamily: "Roboto", fontSize: 20, color: colorText),
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
                  level,
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 20, color: colorText),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  version,
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 20, color: colorText),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "${data.year.toString()}-${data.month.toString()}",
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 12, color: colorText),
                ))
          ],
        ),
      ],
    ),
  );
}
