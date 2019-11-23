import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 3100,
              height: 350,
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
            Center(
              child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4 - 120,
              ),
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://www.nunuoropesa.com/wp-content/uploads/2018/03/profile-img-1.jpg"))),
            )),
          ],
        )
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
