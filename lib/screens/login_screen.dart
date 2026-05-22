import 'package:flutter/material.dart';
import 'package:saylani_quiz_loginpage/screens/signup_screen.dart';
import 'package:saylani_quiz_loginpage/screens/verifycode_screen.dart';
import 'package:saylani_quiz_loginpage/widgets/custom_button.dart';
import 'package:saylani_quiz_loginpage/widgets/custom_textfield.dart';
import 'package:saylani_quiz_loginpage/widgets/footer_text.dart';
import 'package:saylani_quiz_loginpage/widgets/header_widget.dart';
import 'package:saylani_quiz_loginpage/widgets/text_field_title.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();

    emailFocus.addListener(() => setState(() {}));
    passwordFocus.addListener(() => setState(() {}));

    emailController.addListener(() => setState(() {}));
    passwordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    emailFocus.dispose();
    passwordFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerWidget(),
              const SizedBox(height: 20),

              textFieldTitle("Email or Username"),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: "Enter your Email or Username",
                controller: emailController,
                showValidationTick: true,
                validator: (value) {
                  return value.contains("@") && value.contains(".");
                },
              ),

              const SizedBox(height: 20),

              textFieldTitle("Password"),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: "Enter your Password",
                controller: passwordController,
                obscureText: true,
                showValidationTick: true,
                validator: (value) {
                  return value.length >= 6;
                },
              ),

              SizedBox(height: 30),
              customButton(
                title: "Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Codeverify()),
                  );
                },
              ),
              SizedBox(height: 20),
              footertext(
                normalText: "Don't have an account? ",
                actionText: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
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
