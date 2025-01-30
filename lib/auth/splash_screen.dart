import 'package:flutter/material.dart';
import 'package:login_app/auth/login_screen.dart';
import 'package:login_app/utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // الانتقال تلقائيًا بعد 3 ثوانٍ
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية: صورة
          Positioned.fill(
            child: Image.asset(
              AssetsManager.splashImage, // اسم الصورة
              fit: BoxFit.cover, // لجعل الصورة تملأ الشاشة بالكامل
            ),
          ),

          // الظل الخفيف
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4), // لون أسود مع شفافية
            ),
          ),

          // النص في المنتصف
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "LOGIN", // النص
                    style: TextStyle(
                      color: Colors.green, // لون النص
                      fontSize: 28, // حجم النص
                      fontWeight: FontWeight.bold, // سمك النص
                      letterSpacing: 1.5, // تباعد الحروف
                    ),
                  ),
                  TextSpan(
                      text: "APP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ))
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
