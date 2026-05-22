import 'package:flutter/material.dart';
import 'package:saylani_quiz_loginpage/widgets/header_icons_text.dart';

Widget headerWidget() {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset(
          'assets/images/logo.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        Text(
          "HipCamp",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
        ),
        socialButton(
          title: "Continue with Google",
          imagePath: 'assets/images/google.png',
          onTap: () {},
          type: 'google',
        ),
        socialButton(
          title: "Continue with Facebook",
          imagePath: 'assets/images/facebook.png',
          onTap: () {},
          type: 'facebook',
        ),
        socialButton(
          title: "Continue with Apple",
          imagePath: 'assets/images/apple.png',
          onTap: () {},
          type: 'apple',
        ),
      ],
    ),
  );
}
