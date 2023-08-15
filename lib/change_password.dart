import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.w,
        title: Text(
          "E-mail",
          style: TextStyle(
            fontSize: 18.w,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Create-password
          SizedBox(
            height: 31.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Container(
              height: 53.w,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Current password',
                  hintStyle: TextStyle(
                      fontSize: 17.w,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.45)),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          // New-Password
          SizedBox(
            height: 7.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Container(
              height: 53.w,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'New-password',
                  hintStyle: TextStyle(
                      fontSize: 17.w,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.45)),
                  prefixIcon: Icon(
                    Icons.vpn_key_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          // Re-type new password
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Container(
              height: 53.w,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Re-type new password',
                  hintStyle: TextStyle(
                      fontSize: 17.w,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.45)),
                  prefixIcon: Icon(
                    Icons.vpn_key_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          // Update button
          SizedBox(
            height: 15.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.w),
            child: MaterialButton(
              autofocus: true,
              height: 51,
              minWidth: 339,
              color: Color.fromRGBO(46, 204, 113, 1),
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                'Update Password',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.w,
                ),
              ),
            ),
          ),

          // cancel Button
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.w),
            child: MaterialButton(
              autofocus: true,
              height: 51,
              minWidth: 339,
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.w,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 16.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 130.w),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: Color.fromRGBO(46, 204, 113, 1),
                      fontSize: 17.w,
                      fontWeight: FontWeight.w600),
                )),
          )
        ],
      ),
    );
  }
}
