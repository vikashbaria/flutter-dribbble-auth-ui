import 'package:flutter/material.dart';
import 'package:saylani_quiz_loginpage/screens/login_screen.dart';
import 'package:saylani_quiz_loginpage/widgets/custom_button.dart';
import 'package:saylani_quiz_loginpage/widgets/custom_textfield.dart';
import 'package:saylani_quiz_loginpage/widgets/footer_text.dart';
import 'package:saylani_quiz_loginpage/widgets/header_widget.dart';
import 'package:saylani_quiz_loginpage/widgets/text_field_title.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 80,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerWidget(),

              const SizedBox(height: 20),

              /// NAME FIELD
              textFieldTitle("Name"),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: "Enter Your Name",
                controller: nameController,
                showValidationTick: true,
                validator: (value) {
                  return value.trim().isNotEmpty;
                },
              ),

              const SizedBox(height: 20),

              /// EMAIL FIELD
              textFieldTitle("Email"),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: "Enter Your Email",
                controller: emailController,
                showValidationTick: true,
                validator: (value) {
                  return value.contains("@") && value.contains(".");
                },
              ),

              const SizedBox(height: 20),

              /// PASSWORD FIELD
              textFieldTitle("Password"),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: "Enter Your Password",
                controller: passwordController,
                obscureText: true,
                showValidationTick: true,
                validator: (value) {
                  return value.length >= 6;
                },
              ),

              const SizedBox(height: 30),

              /// BUTTON
              customButton(
                title: "Signup",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginpage()),
                  );
                },
              ),
              SizedBox(height: 20),
              footertext(
                normalText: "Already have an account? ",
                actionText: "Please Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginpage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
