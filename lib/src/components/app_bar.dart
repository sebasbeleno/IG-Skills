import 'package:flutter/material.dart';

// This app is a stateful, it tracks the user's current choice.
class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _app_bar = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 50, 152, 255),
          title: const Text('IG-Skils'),
          actions: <Widget>[
            ButtonBar(
                mainAxisSize: MainAxisSize
                    .min, // this will take space as minimum as posible(to center)
                children: <Widget>[
                  new RaisedButton(
                    child: new Text('LogOut'),
                    onPressed: null,
                  ),
                ])
          ],
        ),
      ),
    );
    return _app_bar;
  }
}
