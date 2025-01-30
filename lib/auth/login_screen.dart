import 'package:flutter/material.dart';
import 'package:login_app/Customs/Costuombutom.dart';
import 'package:login_app/Customs/custom_textformfield.dart';
import 'package:login_app/utils/Component.dart';
import 'package:login_app/utils/assets_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AssetsManager.loginImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4), // لون أسود مع شفافية
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 50,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: CustomTextFormField(
                    hintText: "Email Addres",
                    label: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                    hintText: "Password",
                    label: "Password",
                    obscureText: true,
                    suffixIcon: Icons.visibility_off),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Swichbutton(),
                        Text("Rmember me",
                            style: TextStyle(color: Colors.grey, fontSize: 16))
                      ],
                    ),
                    Textbutton()
                  ],
                ),
                CostumeBottons(
                  titale: 'Login',
                ),
                SizedBox(
                  height: 20,
                ),
                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // النص مع الخطوط الجانبية
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white70,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        const Text(
                          "Or login with",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white70,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // الأزرار الثلاثة
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800], // لون الخلفية
                            borderRadius:
                                BorderRadius.circular(10), // الحواف مستديرة
                          ),
                          child: Image.asset(
                            'assets/7123025_logo_google_g_icon.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                        const SizedBox(width: 20),
                        SocialButton(icon: Icons.apple), // زر Apple
                        const SizedBox(width: 20),
                        SocialButton(icon: Icons.facebook), // زر Facebook
                      ],
                    ),
                    const SizedBox(height: 70),
                    // النص السفلي لتسجيل حساب
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
