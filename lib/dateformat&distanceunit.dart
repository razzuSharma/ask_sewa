import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateFormatAndDistanceUnit extends StatefulWidget {
  const DateFormatAndDistanceUnit({Key? key}) : super(key: key);

  @override
  _DateFormatAndDistanceUnitState createState() =>
      _DateFormatAndDistanceUnitState();
}

class _DateFormatAndDistanceUnitState extends State<DateFormatAndDistanceUnit> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      padding: EdgeInsets.only(left: 48.w, top: 15.w),
                      child: Text(
                        'Date Format & Distance Unit',
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
            SizedBox(
              height: 21.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 325.w,
                    child: Text(
                      "24-Hours time",
                      style: TextStyle(
                        height: 2.2.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.w,
                      ),
                    ),
                  ),
                  CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                        if (value) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.grey,
                              content: Text(
                                '24-Hour time enabled successfully.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.grey,
                                  content: Text(
                                    '24-Hour time disabled successfully.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  )));
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Text(
                "DISTANCE UNITS",
                style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),
            ),
            SizedBox(
              height: 18.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 351.w,
                    child: Text(
                      "In Kilometers",
                      style: TextStyle(
                          fontSize: 15.w, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Image.asset('assets/tick.png')
                ],
              ),
            ),
            SizedBox(
              height: 12.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 351.w,
                    child: Text(
                      "In miles",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15.w),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
