import 'package:flutter/material.dart';

class PostClipper extends CustomClipper<Path> {

 @override
  Path getClip(Size size) {
    Path path = Path();
path.lineTo(0, size.height);
path.arcToPoint(Offset(size.width, size.height),
    radius: const Radius.elliptical(30, 10));
path.lineTo(size.width, 0); // this draws the line from current point to the right top position of the widget 
    path.close(); // this closes the loop from current position to the starting point of widget 
    return path;
  }
  
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}