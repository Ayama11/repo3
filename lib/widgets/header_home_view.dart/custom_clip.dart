import 'package:flutter/material.dart';

class CustomClipP extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCuver = Offset(0, size.height - 20);
    final lastCuver = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCuver.dx, firstCuver.dy, lastCuver.dx, lastCuver.dy);

    final secendFirstCuver = Offset(0, size.height - 20);
    final secendlastCuver = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secendFirstCuver.dx, secendFirstCuver.dy,
        secendlastCuver.dx, secendlastCuver.dy);

    final thridfirstCuver = Offset(size.width, size.height - 20);
    final thridlastCuver = Offset(size.width, size.height);
    path.quadraticBezierTo(thridfirstCuver.dx, thridfirstCuver.dy,
        thridlastCuver.dx, thridlastCuver.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
