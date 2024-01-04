import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'button_widget.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool rememberPassword = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16.r),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60.0.h),
                    Center(
                      child: Text("Sign In",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(height: 240.h),
                    reusableText('Email'),
                    Center(
                      child: BuildTextField(
                        hintText: 'Enter votre email',
                        textType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 20.0.h),
                    reusableText('Password'),
                    Center(
                      child: BuildTextField(
                        hintText: 'Enter votre password',
                        textType: TextInputType.visiblePassword,
                      ),
                    ),
                    SizedBox(height: 20.0.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.r, right: 16.r),
                      child: Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: rememberPassword
                                      ? Color(0xFF0560FD)
                                      : Colors.transparent,
                                )),
                            child: Checkbox(
                              value: rememberPassword,
                              onChanged: (value) {
                                setState(() {
                                  rememberPassword = value ?? false;
                                });
                              },
                              checkColor: Color(0xFF0560FD),
                              activeColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          const Text(
                            "Remember Password",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xFF0560FD),
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0.h),
                    Center(
                      child: buildLogInAndRegButton("Connexion", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                    )
                  ]),
            )));
  }
}
