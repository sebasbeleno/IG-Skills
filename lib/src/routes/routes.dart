import 'package:flutter/material.dart';
import 'package:ig_skills/src/pages/login_page.dart';

import '../../splash_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "LoginPage": (BuildContext context) => LoginPage(),
    "/": (BuildContext context) => SplashScreen()
  };
}
