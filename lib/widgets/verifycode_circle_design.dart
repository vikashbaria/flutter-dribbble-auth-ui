import 'package:flutter/material.dart';

Widget circledesign({required String text}) {
  return CircleAvatar(
    backgroundColor: Colors.grey.shade200,
    radius: 30,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
