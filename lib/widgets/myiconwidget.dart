import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({
    Key? key,
    required this.icon,
    required this.color,
    this.size = 25,
  }) : super(key: key);

  final IconData icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    Key? key,
    required this.text,
    this.fontsize = 18,
  }) : super(key: key);

  final String text;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize),
    );
  }
}
