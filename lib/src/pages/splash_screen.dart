import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 60, 152, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              width: 128,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/img/logo.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "SKILLS",
              style: TextStyle(
                  color: Colors.white, fontSize: 38, fontFamily: 'Roboto'),
            )
          ],
        ),
      ),
    );
  }
}
