import 'package:flutter/material.dart';
import 'package:login_app/auth/splash_screen.dart';

void main() {
  runApp(loginApp());
}

class loginApp extends StatelessWidget {
  const loginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // routes: {
      //   "SplashScreen": (context) => SplashScreen(),
      // });
    );
  }
}
