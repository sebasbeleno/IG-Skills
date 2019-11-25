import 'package:flutter/material.dart';
import 'package:ig_skills/src/pages/add_skills.dart';
import 'package:ig_skills/src/pages/login_page.dart';
import 'package:ig_skills/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IG-Skills',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddSkill(),

      /*initialRoute: "/",
      routes: getRoutes(),
      //ruta generada por defecto cuando no se encuentra en nuestras rutas asignadas
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginPage());
      },*/
    );
  }
}
