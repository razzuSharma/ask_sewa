import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/login_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 81.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 108.w),
            child: Image.asset(
              'assets/aasksewa.png',
              height: 198.w,
              width: 198.w,
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Image.asset(
              'assets/welcomepageimage.png',
            ),
          ),
          SizedBox(
            height: 50.w,
          ),

          Text(
            '“Nation’s First Business \n            Promotion App”',
            style: TextStyle(
                fontSize: 22.w,
                fontWeight: FontWeight.w700,
                height: 1.5,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 60.w,
          ),
          // TextButton(
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => LoginPage()
          //               // TapsScreen()
          //               ));
          //     },
          //     child: Text('GO')),
          MaterialButton(
            height: 51.w,
            minWidth: 334.w,
            color: Color.fromRGBO(46, 204, 113, 1),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'GET STARTED',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
