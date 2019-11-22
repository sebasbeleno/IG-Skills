import 'package:flutter/material.dart';

class Ensayo extends StatefulWidget {
  @override
  _EnsayoState createState() => _EnsayoState();
}

class _EnsayoState extends State<Ensayo> {
  String email;
  String password;
  double pantalla;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      Navigator.pushNamed(context, "Ig");
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    height: MediaQuery.of(context).size.height / 2,
                    child: Center(child: _logo()),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            //degradado
                            blurRadius: 15.0,
                          )
                        ],
                        color: Color.fromARGB(255, 50, 152, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    height: MediaQuery.of(context).size.height / 2,
                    child: Form(
                      key: _formKey,
                      autovalidate: _autoValidate,
                      child: form(),
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
      ),
    );
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
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2 - 25),
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

  Widget form() {
    return Stack(
      children: <Widget>[
        ClipPath(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
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
              Container(
                child: Divider(color: Colors.white, thickness: 1),
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
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
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Roboto"),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: RaisedButton(
                  color: Color.fromARGB(255, 255, 255, 255),
                  onPressed: _validateInputs,
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
