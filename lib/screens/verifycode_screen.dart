import 'package:flutter/material.dart';
import 'package:saylani_quiz_loginpage/widgets/custom_button.dart';
import 'package:saylani_quiz_loginpage/widgets/verifycode_circle_design.dart';

class Codeverify extends StatefulWidget {
  const Codeverify({super.key});

  @override
  State<Codeverify> createState() => _CodeverifyState();
}

class _CodeverifyState extends State<Codeverify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// BACK BUTTON
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey[400]!, width: 1),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// SCREEN CONTENT
              Center(
                child: Column(
                  children: [
                    Text(
                      "Verify Code",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Please enter the code we just sent to email\n vikashbaria4@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        circledesign(text: "5"),
                        circledesign(text: "4"),
                        circledesign(text: "-"),
                        circledesign(text: "-"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Don't receive the OTP?",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Resend Code",
                      style: TextStyle(
                        height: 1.8,
                        color: Colors.red,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              customButton(
                title: "Verify",
                onTap: () {
                  // Handle verify button tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
