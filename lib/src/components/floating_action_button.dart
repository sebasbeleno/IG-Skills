import 'package:flutter/material.dart';
import 'package:ig_skills/src/pages/add_skills.dart';

class FloatingNavButtom extends StatelessWidget {

  Future navigateToSubPage(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AddSkills()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0,
              )
            ]),
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 41, 55, 66),
          child: Icon(
            Icons.add,
            size: 50,
          ),
          onPressed: () {navigateToSubPage(context);},
          highlightElevation: 200.0,
        ));
  }
}
