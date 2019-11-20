import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginTemp extends StatefulWidget {
  @override
  _LoginTempState createState() => _LoginTempState();
}

class _LoginTempState extends State<LoginTemp> {
  String _email;
  String _password;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void _submitCommand() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      _loginCommand();
    }
  }

  void _loginCommand() {
    final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        key: scaffoldKey,
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 134, left: 42, right: 42),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
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
                        fontFamily: "Roboto"),
                  )
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black38,
                        //degradado
                        blurRadius: 15.0,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 60, 152, 255),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 70),
                          child: _getEmail()),
                      Divider(
                        endIndent: 70,
                        indent: 70,
                        color: Colors.white,
                        thickness: 3,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 70),
                          child: _getPassword()),
                      Divider(
                        endIndent: 70,
                        indent: 70,
                        color: Colors.white,
                        thickness: 3,
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 230,
                        height: 44,
                        margin: EdgeInsets.only(left: 70, right: 70),
                        child: RaisedButton(
                          color: Color.fromARGB(255, 245, 245, 245),
                          onPressed: _submitCommand,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 75),
                    width: 236,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 41, 55, 66),
                    ),
                    child: Center(
                      child: Text(
                        "wellcome again".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget _getEmail() {
    return Container(
      child: TextFormField(
        validator: (val) =>
            !EmailValidator.validate(val, true) ? 'Not a valid email.' : null,
        onSaved: (val) => _email = val,
        style: TextStyle(color: Colors.white, fontSize: 12),
        decoration: InputDecoration(
            hintText: "Email Address",
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
            icon: Icon(Icons.mail_outline, color: Colors.white)),
      ),
    );
  }

  Widget _getPassword() {
    return TextFormField(
      style: TextStyle(color: Colors.white, fontSize: 12),
      validator: (val) => val.length < 4 ? 'Password too short..' : null,
      onSaved: (val) => _password = val,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          icon: Icon(Icons.lock_outline, color: Colors.white)),
    );
  }
}
