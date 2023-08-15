import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/report_problem.dart';
import 'package:rideon/terms_and_policies.dart';
import 'package:rideon/welcome_screen.dart';
import 'dateformat&distanceunit.dart';
import 'help_center.dart';
import 'notification.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  dynamic _value = 1;
  
  get FlatButton => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Column(children: [
        Container(
          height: 124.w,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 0.3.w, color: Colors.grey))),
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
                padding: EdgeInsets.only(left: 119.w, top: 55.w),
                child: Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 18.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 560.w,
          child: ListView(
            padding: EdgeInsets.only(top: 30.w),
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/help.png',
                  height: 23.w,
                  width: 23.w,
                ),
                horizontalTitleGap: 0.w,
                title: Text(
                  'Help & Support',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    fontSize: 18.w,
                    height: 2.2.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelpCenter()),
                    );
                  },
                  contentPadding: EdgeInsets.only(left: 30.w),
                  leading: Image.asset(
                    'assets/hc.png',
                    height: 20.w,
                    width: 20.w,
                  ),
                  horizontalTitleGap: 0.w,
                  title: Text(
                    'Help Center',
                    style: TextStyle(
                      height: 2.2.w,
                      letterSpacing: 0.5,
                      fontSize: 14.w,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportProblem()),
                  );
                },
                leading: Image.asset(
                  'assets/rp.png',
                  height: 20.w,
                  width: 20.w,
                ),
                horizontalTitleGap: 0.w,
                contentPadding: EdgeInsets.only(left: 30.w),
                title: Text(
                  'Report a Problem',
                  style: TextStyle(
                    height: 2.2.w,
                    letterSpacing: 0.5,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TermsAndPolicies()),
                  );
                },
                leading: Image.asset(
                  'assets/tp.png',
                  height: 20.w,
                  width: 20.w,
                ),
                horizontalTitleGap: 0.w,
                contentPadding: EdgeInsets.only(left: 30.w),
                title: Text(
                  'Terms and Policies',
                  style: TextStyle(
                    height: 2.2.w,
                    letterSpacing: 0.5,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10.w,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/setting.png',
                  height: 25.w,
                  width: 25.w,
                ),
                horizontalTitleGap: 0.w,
                title: Text(
                  'Settings & Preferences',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    height: 2.2.w,
                    fontSize: 18.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications1()),
                  );
                },
                leading: Image.asset(
                  'assets/notifi.png',
                  height: 20.w,
                  width: 20.w,
                ),
                horizontalTitleGap: 0.w,
                contentPadding: EdgeInsets.only(left: 30.w),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    height: 2.2.w,
                    letterSpacing: 0.5,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DateFormatAndDistanceUnit()),
                  );
                },
                leading: Image.asset(
                  'assets/df.png',
                  height: 20.w,
                  width: 20.w,
                ),
                horizontalTitleGap: 0.w,
                contentPadding: EdgeInsets.only(left: 30.w),
                title: Text(
                  'Date Format & Distance Unit',
                  style: TextStyle(
                    height: 2.2.w,
                    letterSpacing: 0.5,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Container(
                            height: 242.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.w),
                                    topRight: Radius.circular(20.w))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 33.w),
                                  child: Text(
                                    'Select your Language',
                                    style: TextStyle(
                                        fontSize: 18.w,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    _value = 1;
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 44.w,
                                    child: Row(
                                      children: [
                                        Text(
                                          'English',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 255.w),
                                        Transform.scale(
                                          scale: 1.w,
                                          child: Radio(
                                            groupValue: _value,
                                            value: 1,
                                            activeColor:
                                                Color.fromRGBO(46, 204, 113, 1),
                                            onChanged: (value) {
                                              setState(() {
                                                _value = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5.w,
                                  ),
                                  child: Container(
                                    height: 0.1,
                                    color: Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _value = 2;
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 44.w,
                                    child: Row(
                                      children: [
                                        Text(
                                          'नेपाली',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 270.w),
                                        Transform.scale(
                                          scale: 1.w,
                                          child: Radio(
                                              groupValue: _value,
                                              value: 2,
                                              activeColor: Color.fromRGBO(
                                                  46, 204, 113, 1),
                                              onChanged: (value) {
                                                return setState(() {
                                                  _value = value;
                                                });
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5.w,
                                  ),
                                  child: Container(
                                    height: 0.1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                leading: Image.asset(
                  'assets/lang.png',
                  height: 20.w,
                  width: 20.w,
                ),
                horizontalTitleGap: 0.w,
                contentPadding: EdgeInsets.only(left: 30.w),
                title: Text(
                  'Language',
                  style: TextStyle(
                    height: 2.2.w,
                    letterSpacing: 0.5,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),

        // ignore: deprecated_member_use
        FlatButton.icon(
          height: 50.w,
          minWidth: 390.w,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.w),
          ),
          onPressed: () {
            final action = CupertinoActionSheet(
              title: Text(
                "Are you sure you want to log out?",
                style: TextStyle(
                    fontSize: 14.w, color: Color.fromRGBO(151, 151, 151, 1)),
              ),
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 18.w,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(241, 5, 5, 1)),
                  ),
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()));
                    print("Action 1 is been clicked");
                  },
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      fontSize: 18.w,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(73, 150, 94, 1)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );
            showCupertinoModalPopup(
                barrierDismissible: true,
                context: context,
                builder: (context) => action);
          },
          icon: Icon(
            Icons.logout,
            color: Color.fromRGBO(46, 204, 113, 1),
          ),
          label: Text(
            'Log Out',
            style: TextStyle(
                fontSize: 14.w,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          color: Color.fromRGBO(224, 224, 224, 1),
        ),
      ]),
    );
  }
}
