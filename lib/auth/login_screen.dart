import 'package:flutter/material.dart';
import 'package:login_app/Customs/Costuombutom.dart';
import 'package:login_app/Customs/custom_textformfield.dart';
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
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
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
                Text(
                  "  ـــــــــــــــــــــــــــــــــــــ   Or login with    ـــــــــــــــــــــــــــــــــــ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                // Container(
                //     child: Positioned(
                //   width: 70,
                //   height: 70,
                //   child: Image.asset("Icon.png"),
                // ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
