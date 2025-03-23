
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });
  String text;
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        color: color,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 15),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}