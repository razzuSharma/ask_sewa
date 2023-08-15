import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardNotification extends StatelessWidget {
  const DashboardNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Column(
        children: [
          Container(
            height: 124.w,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.w, color: Color.fromRGBO(218, 218, 218, 1)))),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 49.w),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.w,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 100.w, top: 60.w),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.w, left: 56.w, right: 55.w),
            child: Container(
              width: 303.w,
              height: 228.w,
              child: Image.asset("assets/dash1.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 56.w),
            child: Row(
              children: [
                Container(
                  height: 9.w,
                  width: 9.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: Color.fromRGBO(46, 204, 113, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Container(
                      height: 88.w,
                      width: 352.w,
                      child: Text(
                        "Your request for reparing tap has been accepted. Wait for the call from service provider.",
                        style: TextStyle(fontSize: 18.w),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 40.w),
            child: Row(
              children: [
                Container(
                    height: 9.w,
                    width: 9.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      color: Color.fromRGBO(46, 204, 113, 1),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Container(
                      height: 64.w,
                      width: 352.w,
                      child: Text(
                        "Your ratings to the plumber has been registered.",
                        style: TextStyle(fontSize: 18.w),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 40.w),
            child: Row(
              children: [
                Container(
                  height: 9.w,
                  width: 9.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: Color.fromRGBO(46, 204, 113, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Container(
                      height: 96.w,
                      width: 352.w,
                      child: Text(
                        "We have updated our privacy and policies settings. You can view and give feedback.",
                        style: TextStyle(fontSize: 18.w),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
