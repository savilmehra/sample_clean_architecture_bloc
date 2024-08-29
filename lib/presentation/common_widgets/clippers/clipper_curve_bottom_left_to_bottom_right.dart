import 'package:flutter/material.dart';


class ClipperCurveBottomLeftToBottomRight extends CustomClipper<Path> {
  final Offset firstPointWhereCurveStart;
  final Offset quadraticBezierOffsetStart;
  final Offset quadraticBezierOffsetEnd;

  final Offset secondQuadraticBezierOffsetStart;
  final Offset secondQuadraticBezierOffsetEnd;

  ClipperCurveBottomLeftToBottomRight(
      {super.reclip,
        required this.firstPointWhereCurveStart,
        required this.quadraticBezierOffsetStart,
        required this.quadraticBezierOffsetEnd,
        required this.secondQuadraticBezierOffsetStart,
        required this.secondQuadraticBezierOffsetEnd});

  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, firstPointWhereCurveStart.dy);

     path.quadraticBezierTo(quadraticBezierOffsetStart.dx, quadraticBezierOffsetStart.dy,
        quadraticBezierOffsetEnd.dx, quadraticBezierOffsetEnd.dy);

    path.quadraticBezierTo(secondQuadraticBezierOffsetStart.dx, secondQuadraticBezierOffsetStart.dy,
        secondQuadraticBezierOffsetEnd.dx, secondQuadraticBezierOffsetEnd.dy);
    path.lineTo(size.width, size.height );
   // path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}