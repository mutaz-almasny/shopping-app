import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/widgets/custom_button.dart';
import 'package:project_1/widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    "Let’s Get Started!",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Create an account on MNZL to get all features",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // firstName
                  CustomTextFormField(
                    controller: firstName,
                    hint: "First Name",
                    icon: Icons.person_2_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your first name";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),
                  // lastName
                  CustomTextFormField(
                    controller: lastName,
                    hint: "Last Name",
                    icon: Icons.person_2_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your last name";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),
                  // Username
                  CustomTextFormField(
                    controller: username,
                    hint: "User Name",
                    icon: Icons.person_2_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 4) {
                        return "Username must be at least 4 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // email
                  CustomTextFormField(
                    controller: email,
                    hint: "Email",
                    icon: Icons.email_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email";
                      }

                      bool validEmail = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value);

                      if (!validEmail) {
                        return "Invalid email format";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // password
                  CustomTextFormField(
                    controller: password,
                    hint: "Password",
                    icon: Icons.lock_open_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter password";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // email
                  CustomTextFormField(
                    controller: confirmPassword,
                    hint: "Confirm Password",
                    icon: Icons.lock_open_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm your password";
                      }
                      if (value != password.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  CustomButton(
                    text: "CREATE",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),

                  const SizedBox(height: 30),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "Login here",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                Navigator.of(context).pushNamed("login"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
