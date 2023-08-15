import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/email.dart';

import 'change_password.dart';

class SecurityAndLogin extends StatelessWidget {
  const SecurityAndLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.w,
        title: Text(
          "Security and Login",
          style: TextStyle(
            fontSize: 18.w,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePassword()),
              );
            },
            child: new Container(
              height: 46.w,
              width: 414.w,
              child: Row(
                children: [
                  SizedBox(
                    width: 19.w,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15.w,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 295.w,
                  ),
                  Image.asset('assets/f.png')
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Email()),
              );
            },
            child: new Container(
              height: 46.w,
              width: 414.w,
              child: Row(
                children: [
                  SizedBox(
                    width: 19.w,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 15.w,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 153.w,
                  ),
                  Text(
                    'yonahime@gmail.com',
                    style: TextStyle(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 0.45)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset('assets/f.png')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
