import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mentoring3/utils/color_theme.dart';
import 'package:flutter_mentoring3/views/forgot_views.dart';
import 'package:flutter_mentoring3/views/register_views.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                style: TextStyle(
                    color: colorPrimaryPink,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              Text(
                'Enter Your Details',
                style: TextStyle(color: colorGrey3, fontSize: 22),
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailAddressController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  suffixIcon: Icon(Icons.email, color: colorGrey3),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  suffixIcon: Icon(CupertinoIcons.eye_slash, color: colorGrey3),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassPageScreen(),
                     ),
                    );
                  },
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: colorPrimaryPink, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: colorPrimaryWhite,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorPrimaryPink,
                    fixedSize: Size(320, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 1,
                      color: colorBlack),
                  Text(' Or Continue with '),
                  Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 1,
                      color: colorBlack),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: colorBlack,
                  ),
                  Icon(
                    Icons.g_mobiledata,
                    color: colorBlack,
                    size: 42,
                  ),
                  Icon(
                    Icons.apple,
                    color: colorBlack,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPageScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: colorBlack),
                      children: [
                        TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(
                            color: colorPrimaryPink,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
