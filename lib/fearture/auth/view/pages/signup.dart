import 'package:flutter/material.dart';
import 'package:sptymusic/fearture/auth/view/pages/widget/custom_field.dart';
import 'package:sptymusic/fearture/core/theme/apptheme.dart';
import 'widget/auth_gardent_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  formKey.currentState!.validate();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Pallete.whiteColor,
                ),
              ),
              SizedBox(height: 15),
              CustomField(hintText: "Name",
              controller: nameController),
              CustomField(hintText: "Email",
              controller: emailController),
              CustomField(hintText: "Password", isObscure:false,
              controller: passwordController),
              AuthGradientButton(onPressed: () {}, text: "Signup"),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: Pallete.gradient1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
