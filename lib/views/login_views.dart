import 'package:flutter/material.dart';
import 'package:flutter_mentoring3/utils/color_theme.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 24, left: 16, right: 16),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/book-icon.png')),
              SizedBox(height: 50),
              Text(
                'Welcome Back!',
                style: TextStyle(color: colorPrimaryPink,
                fontSize: 30,
                fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              
            ],
          ),
        ),
      ),
    );
  }
}
