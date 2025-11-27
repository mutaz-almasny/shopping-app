import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/widgets/custom_button.dart';
import 'package:project_1/widgets/custom_text_form_field.dart';
import 'package:project_1/widgets/logo_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    const LogoText(),
                    Text(
                      "Welcome back!",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Log in to existing LOGO account",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 40),

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Username
                          CustomTextFormField(
                            controller: username,
                            hint: "Username",
                            icon: Icons.person_2_outlined,
                            validator: (value) {},
                          ),

                          const SizedBox(height: 25),

                          CustomTextFormField(
                            controller: password,
                            hint: "Password",
                            icon: Icons.lock_open_outlined,
                            validator: (value) {},
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Align(
                        alignment: .centerRight,
                        child: GestureDetector(
                          onTap: null,
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    CustomButton(
                      text: "LOG IN",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      "Or sign up using",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: .center,
                      spacing: 15,
                      children: [
                        // Facebook
                        GestureDetector(
                          onTap: null,
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffF8F8F6),
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xff1877F2),
                              size: 40,
                            ),
                          ),
                        ),
                        // Google
                        GestureDetector(
                          onTap: null,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffF8F8F6),
                            child: Image.asset("assets/images/google.png"),
                          ),
                        ),
                        // Apple
                        GestureDetector(
                          onTap: null,
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffF8F8F6),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff283544),
                              child: Icon(
                                FontAwesomeIcons.apple,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.of(context).pushNamed("signup"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Image.asset("assets/images/grey-rectangle.png"),
          ),
          Positioned(
            left: -50,
            child: Image.asset("assets/images/blue-rectangle.png"),
          ),
        ],
      ),
    );
  }
}
