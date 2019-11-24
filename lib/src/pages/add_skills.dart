import 'package:flutter/material.dart';

class AddSkill extends StatefulWidget {
  AddSkill({Key key}) : super(key: key);

  @override
  _AddSkillState createState() => _AddSkillState();
}

class _AddSkillState extends State<AddSkill> {
  String text;
  int selectedRadio1;
  int selectedRadio2;

  @override
  void initState() {
    super.initState();
    selectedRadio2 = 0;
    selectedRadio1 = 0;
  }

  setSelectedRadio1(int val) {
    setState(() {
      selectedRadio1 = val;
    });
  }

  setSelectedRadio2(int val) {
    setState(() {
      selectedRadio2 = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
              card(),
            ],
          ),
        ],
      ),
    );
  }

  Widget card() {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      color: Colors.blue,
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
                  onSaved: (String val) {
                    this.text = val;
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
