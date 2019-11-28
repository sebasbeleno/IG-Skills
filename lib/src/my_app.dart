import 'package:flutter/material.dart';
import 'package:ig_skills/splash_screen.dart';
<<<<<<< HEAD
=======
import 'package:ig_skills/src/pages/login_page.dart';
import 'package:ig_skills/src/pages/testpage.dart';

>>>>>>> bb788b0a00db50f1bff776814055dae1df982be3

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
      home: SplashScreen(),
      // initialRoute: "/",
      // routes: getRoutes(),
      // //ruta generada por defecto cuando no se encuentra en nuestras rutas asignadas
      // onGenerateRoute: (RouteSettings setting) {
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => LoginPage());
      // },
      // home: HomePage(),
    );
  }
}
