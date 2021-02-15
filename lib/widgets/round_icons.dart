import 'package:flutter/material.dart';

class RoundIcons extends StatelessWidget {
  RoundIcons({this.color, this.icon});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFFFFFFFF),
      radius: 30.0,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
