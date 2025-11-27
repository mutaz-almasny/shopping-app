import 'package:flutter/material.dart';
import 'package:project_1/login_screen.dart';
import 'package:project_1/signup_screen.dart';
import 'package:project_1/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      routes: {
        "login": (context) => LoginScreen(),
        "signup": (context) => SignupScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
