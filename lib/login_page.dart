import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rideon/phone_no_screen.dart';
import 'package:rideon/tap_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: Column(
          children: [
            SizedBox(
              height: 50.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 85.w, vertical: 30.w),
              child: Image.asset(
                'assets/aasksewa.png',
                height: 250.w,
                width: 230.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Row(
                children: [
                  Container(
                    height: 53.w,
                    width: 53.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.w),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/usernameicon.png',
                      height: 10.w,
                      width: 10.w,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.w),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    height: 53.w,
                    width: 300.w,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextFormField(
                        controller: usernameController,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '* Please enter your username';
                          }
                          return null;
                        },
                        style: TextStyle(fontSize: 16.w),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.w),
              child: Row(
                children: [
                  Container(
                    height: 53.w,
                    width: 53.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.w),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/passwordicon.png',
                      height: 10.w,
                      width: 10.w,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.w),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    height: 53.w,
                    width: 300.w,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '* Please enter your password';
                          }
                          return null;
                        },
                        style: TextStyle(fontSize: 16.w),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              height: 51.w,
              minWidth: 234.w,
              color: Color.fromRGBO(46, 204, 113, 1),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TapsScreen()),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.w,
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot username or password ?',
                  style: TextStyle(fontSize: 12.w, color: Colors.red),
                )),
            SizedBox(
              height: 20.w,
            ),
            Text('OR'),
            SizedBox(
              height: 20.w,
            ),
            MaterialButton(
              height: 51.w,
              minWidth: 234.w,
              color: Color.fromRGBO(46, 204, 113, 1),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhnNumberScreen()),
                );
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
