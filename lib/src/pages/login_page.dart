import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[headers(), login()],
        )
      ],
    ));
  }

  Widget headers() {
    return Container(
      child: Row(
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
                fontFamily: "Roboto"),
          )
        ],
      ),
    );
  }

  Widget login() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100),
          height: 350,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                //degradado
                blurRadius: 15.0,
              )
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      icon: Icon(Icons.mail_outline, color: Colors.white)),
                ),
              ),
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
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      icon: Icon(Icons.lock_outline, color: Colors.white)),
                ),
              ),
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
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
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
              color: Colors.black,
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
    );
  }
}
