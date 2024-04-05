import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mentoring3/utils/color_theme.dart';
import 'package:flutter_mentoring3/views/login_views.dart';

class RegisterPageScreen extends StatefulWidget {
  const RegisterPageScreen({super.key});

  @override
  State<RegisterPageScreen> createState() => _RegisterPageScreenState();
}

class _RegisterPageScreenState extends State<RegisterPageScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 32,
                  color: colorPrimaryPink,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Enter Your Details',
                style: TextStyle(
                  fontSize: 18,
                  color: colorGrey3,
                ),
              ),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.person,
                    color: colorGrey3,
                  ),
                ),
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: colorGrey3,
                  ),
                ),
              ),
              TextFormField(
                controller: _countryController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Country',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.chevron_down,
                    color: colorGrey3,
                  ),
                ),
              ),
              TextFormField(
                controller: _dateOfBirthController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Date Of Birth',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.calendar,
                    color: colorGrey3,
                  ),
                ),
              ),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Phone',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    Icons.phone_outlined,
                    color: colorGrey3,
                  ),
                ),
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.eye_slash,
                    color: colorGrey3,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 14,
                  color: colorPrimaryPink,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: colorPrimaryWhite,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorPrimaryPink,
                    fixedSize: Size(320, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 1,
                    color: colorBlack,
                  ),
                  Text(
                    ' Or Continue with ',
                    style: TextStyle(color: colorBlack),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 1,
                    color: colorBlack,
                  ),
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
              SizedBox(height: 32),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPageScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: colorBlack),
                      children: [
                        TextSpan(
                          text: ' Login',
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
