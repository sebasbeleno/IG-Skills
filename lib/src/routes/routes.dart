import 'package:flutter/material.dart';
import 'package:ig_skills/src/ig_app.dart';
import 'package:ig_skills/src/pages/login_page.dart';
import 'package:ig_skills/src/pages/settings.dart';
import 'package:ig_skills/src/pages/add_skills.dart';

import '../../splash_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "LoginPage": (BuildContext context) => LoginPage(),
    "Ig": (BuildContext context) => IGApp(),
    "Settings": (BuildContext context) => Settings(),
    "/": (BuildContext context) => SplashScreen(),
    "AddSkills": (BuildContext context) => AddSkills()
  };
}
