import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ig_skills/helpers/result.dart';
import 'package:ig_skills/src/blocs/profileBloc.dart';
import 'package:ig_skills/src/models/profile.dart';
import 'package:ig_skills/src/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String email;
  String password;
  double pantalla;
  double adicional = 0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;
  @override
  void initState() {
    super.initState();
    profilebloc.getAllItems();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  void _showDialog(String message, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(230, 245, 245, 245),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 41, 55, 66)),
              ),
            ],
          ),
          titlePadding: EdgeInsets.all(10),
          contentPadding: EdgeInsets.all(10),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 41, 55, 66)),
              ),
            ],
          ),
          actions: <Widget>[
<<<<<<< HEAD
            FlatButton(
              padding: EdgeInsets.only(right: 105),
              child: Text(
                "Okay",
                style: TextStyle(fontSize: 20),
              ),
=======
            new FlatButton(
              child: new Text("Ok"),
>>>>>>> master
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _validateInputs(List profiles) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Result resProfile = getProfile(email, password, profiles);
      if (resProfile.isSuccess) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Home(
                      myProfile: resProfile.myResult,
                    )));
      } else {
        _showDialog(resProfile.message, "Ouh!");
      }
    } else {
      setState(() {
        adicional = 50;
        _autoValidate = true;
      });
    }
  }

  String _validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Enter Valid Password';
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: FutureBuilder(
          future: profilebloc.allItems.first,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),
                          ),
                          height: MediaQuery.of(context).size.height / 2 -
                              adicional,
                          child: Center(child: _logo()),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 15.0,
                                )
                              ],
                              color: Color.fromARGB(255, 50, 152, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: (MediaQuery.of(context).size.height / 2) +
                              adicional -
                              25,
                          child: Form(
                            key: _formKey,
                            autovalidate: _autoValidate,
                            child: form(context, snapshot.data),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: _welcome(),
                    )
                  ],
                ),
              ],
            );
          }),
    ));
  }

  Widget _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 128,
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/imgIg.png"),
                  fit: BoxFit.cover)),
        ),
        Text(
          "SKILLS",
          style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              color: Color.fromARGB(255, 41, 55, 66)),
        )
      ],
    );
  }

  Widget _welcome() {
    return Center(
      child: Container(
          width: 236,
          height: 50,
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2 - 25 - adicional),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color.fromARGB(255, 41, 55, 66),
          ),
          child: Center(
            child: Text(
              "wellcome".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

  Widget form(BuildContext context, List<dynamic> data) {
    return Stack(
      children: <Widget>[
        ClipPath(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextFormField(
                      onChanged: (val) {
                        email = val;
                      },
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                      onSaved: (String val) {
                        this.email = val;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Email address",
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          )),
                    )),
              ),
              Container(
                child: Divider(color: Colors.white, thickness: 1),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    onChanged: (val) {
                      password = val;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: _validatePassword,
                    onSaved: (String val) {
                      this.password = val;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        )),
                  )),
              Container(
                child: Divider(color: Colors.white, thickness: 1),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontFamily: "Roboto"),
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: RaisedButton(
                  color: Color.fromARGB(255, 245, 245, 245),
                  onPressed: () {
                    _validateInputs(data);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Roboto",
                          color: Color.fromARGB(255, 41, 55, 66)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Result getProfile(String email, String password, List profiles) {
    for (Profile p in profiles) {
      if (p.email == email) {
        if (p.password == password) {
          Result r = new Result();
          r.isSuccess = true;
          r.myResult = p;
          return r;
        }
      }
    }
    Result r = new Result();
    r.isSuccess = false;
<<<<<<< HEAD
    r.message = "Email or password are incorrect!";
=======
    r.message = "Email or password are incorrect";
>>>>>>> master
    return r;
  }
}
