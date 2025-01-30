import 'package:flutter/material.dart';
import 'package:login_app/auth/signup_screen.dart';

class CostumeBottons extends StatefulWidget {
  final String titale; // نص الزر
  final VoidCallback? onPressed; // وظيفة عند النقر
  final double width; // عرض الزر
  final double height; // ارتفاع الزر

  const CostumeBottons({
    super.key,
    required this.titale,
    this.onPressed,
    this.width = 400,
    this.height = 50,
  });

  @override
  _CostumeBottonsState createState() => _CostumeBottonsState();
}

class _CostumeBottonsState extends State<CostumeBottons>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: widget.onPressed??(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SingUp()),
        );
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green], // تدرج لوني
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10), // زوايا دائرية
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3), // ظل
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.titale,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
