import 'package:flutter/material.dart';
import 'package:ig_skills/src/pages/add_skills.dart';
import 'package:ig_skills/src/pages/home.dart';
import 'package:ig_skills/src/pages/login_page.dart';
import 'package:ig_skills/src/pages/settings.dart';

import '../../splash_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "LoginPage": (BuildContext context) => LoginPage(),
    "Home": (BuildContext context) => Home(),
    "Settings": (BuildContext context) => Settings(),
    "/": (BuildContext context) => SplashScreen(),
    "AddSkills": (BuildContext context) => AddSkill()
  };
}
