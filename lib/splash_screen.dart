import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ig_skills/src/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future initData() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  void initState() {
    super.initState();

    /// Initialize data
    initData().then((value) {
      navigateToLoginPage();
    });
  }

  /// Navigate to Login page
  void navigateToLoginPage() {
    /// Push LoginPage.
    // Navigator.pushNamed(context, "LoginPage");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

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
                  color: Color.fromARGB(255, 60, 152, 255),
                  image: DecorationImage(
                      image: AssetImage('assets/img/imgIg2.png'),
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
