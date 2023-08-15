import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications1 extends StatefulWidget {
  const Notifications1({Key? key}) : super(key: key);

  @override
  _Notifications1State createState() => _Notifications1State();
}

class _Notifications1State extends State<Notifications1> {
  bool _switchValue = false;
  bool _email = true;
  bool _push = false;
  bool _app = true;
  bool _showInNotificationCenter = false;
  bool _sounds = false;
  bool _badgeAppIcon = false;
  bool _showOnLockScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: Column(children: [
          SizedBox(
            height: 50.w,
          ),
          Container(
            height: 75.w,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.3.w, color: Colors.grey))),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100.w, top: 15.w),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            height: 64.w,
            child: Row(
              children: [
                SizedBox(
                  width: 325.w,
                  child: Text(
                    "Pause All",
                    style: TextStyle(
                      height: 3.2.w,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.w,
                    ),
                  ),
                ),
                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                      if (value) {
                        _email = false;
                        _app = false;
                        _badgeAppIcon = false;
                        _push = false;
                        _showInNotificationCenter = false;
                        _showOnLockScreen = false;
                        _sounds = false;
                      } else {
                        _email = true;
                        _push = false;
                        _app = true;
                        _showInNotificationCenter = false;
                        _sounds = false;
                        _badgeAppIcon = false;
                        _showOnLockScreen = true;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 18.w,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            height: 53.w,
            child: Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                ),
                SizedBox(
                  width: 13.5.w,
                ),
                SizedBox(
                  width: 285.w,
                  child: Text(
                    "E-mail",
                    style: TextStyle(
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w,
                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                  ),
                ),
                CupertinoSwitch(
                  value: _email,
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 4.w),
          Container(
            height: 53.w,
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                Icon(
                  Icons.push_pin,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                ),
                SizedBox(
                  width: 13.5.w,
                ),
                SizedBox(
                  width: 285.w,
                  child: Text(
                    "Push",
                    style: TextStyle(
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w,
                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                  ),
                ),
                CupertinoSwitch(
                  value: _push,
                  onChanged: (value) {
                    setState(() {
                      _push = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 4.w),
          Container(
            height: 53.w,
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                Icon(
                  Icons.apps,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                ),
                SizedBox(
                  width: 13.5.w,
                ),
                SizedBox(
                  width: 285.w,
                  child: Text(
                    "App",
                    style: TextStyle(
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w,
                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                  ),
                ),
                CupertinoSwitch(
                  value: _app,
                  onChanged: (value) {
                    setState(() {
                      _app = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 18.w),
          Divider(),
          SizedBox(height: 18.w),
          Container(
            height: 53.w,
            margin: EdgeInsets.symmetric(
              horizontal: 14.w,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 325.w,
                  child: Text(
                    "Show in notification center",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w,
                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                  ),
                ),
                CupertinoSwitch(
                  value: _showInNotificationCenter,
                  onChanged: (value) {
                    setState(() {
                      _showInNotificationCenter = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 18.w),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                SizedBox(
                  width: 325.w,
                  child: Text(
                    "Sounds",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                CupertinoSwitch(
                  value: _sounds,
                  onChanged: (value) {
                    setState(() {
                      _sounds = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 18.w),
          Container(
            height: 53.w,
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                SizedBox(
                  width: 325.w,
                  child: Text(
                    "Badge App icon",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                CupertinoSwitch(
                  value: _badgeAppIcon,
                  onChanged: (value) {
                    setState(() {
                      _badgeAppIcon = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 18.w),
          Container(
            height: 53.w,
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                SizedBox(
                  width: 325.w,
                  child: Text(
                    "Show on lock screen",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        height: 2.5.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                CupertinoSwitch(
                  value: _showOnLockScreen,
                  onChanged: (value) {
                    setState(() {
                      _showOnLockScreen = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18.w,
          ),
          Divider(),
          SizedBox(
            height: 25.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Text(
              "Show alerts on the lock screen, and in Notification center when it is accessed from the lock screen.",
              style: TextStyle(
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.6)),
            ),
          ),
        ]));
  }
}
