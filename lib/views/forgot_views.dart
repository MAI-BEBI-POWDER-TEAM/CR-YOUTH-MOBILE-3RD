import 'package:flutter/material.dart';
import 'package:flutter_mentoring3/utils/color_theme.dart';

class ForgotPassPageScreen extends StatefulWidget {
  const ForgotPassPageScreen({super.key});

  @override
  State<ForgotPassPageScreen> createState() => _ForgotPassPageScreenState();
}

class _ForgotPassPageScreenState extends State<ForgotPassPageScreen> {
  final TextEditingController _forgetPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget your password',
          style: TextStyle(
            color: colorBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/forgot-pass.png',
                  color: colorBlack,
                  width: 240,
                  height: 240,
                ),
              ),
              Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 18,
                  color: colorBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Don\'t worry! It happens. Please enter the address associated with your account',
                style: TextStyle(
                  fontSize: 16,
                  color: colorBlack,
                ),
              ),
              SizedBox(height: 96),
              TextFormField(
                controller: _forgetPassController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  labelText: 'Email Address / Mobile Number',
                  labelStyle: TextStyle(
                    color: colorGrey3,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorBlack),
                  ),
                ),
              ),
              SizedBox(height: 120),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
