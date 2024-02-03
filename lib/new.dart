import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipPath(
            clipper: Curve(),
            child: Container(
              color: Color.fromARGB(255, 7, 119, 255),
              height: 300,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}

class Curve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0038750, size.height * 0.0026714);
    path_0.quadraticBezierTo(size.width * 0.5914417, size.height * -0.0036714,
        size.width * 1.0019284, size.height * -0.0000644);
    path_0.quadraticBezierTo(size.width * 0.9985583, size.height * 0.4495286,
        size.width * 0.9972333, size.height * 1.0007857);
    path_0.cubicTo(
        size.width * 0.9274250,
        size.height * 0.2134714,
        size.width * 0.3648167,
        size.height * 0.7710143,
        size.width * 0.4938333,
        size.height * 0.2691286);
    path_0.cubicTo(
        size.width * 0.6259667,
        size.height * -0.0130143,
        size.width * 0.1960333,
        size.height * 0.2724571,
        size.width * -0.0038750,
        size.height * 0.0026714);
    path_0.close();

    // Close the path
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
