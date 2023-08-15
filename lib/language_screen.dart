import 'package:flutter/material.dart';
import 'phone_no_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 108.w),
              child: Image.asset('assets/aasksewa.png',
                  height: 198.h, width: 198.w),
            ),
            SizedBox(
              height: 32.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Radiobutton(),
            SizedBox(height: 33.h),
            Column(children: [
              Image.asset(
                'assets/123.png',
                height: 256.h,
                width: 397.w,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {
  dynamic _value;
  bool widgetVisible = false;

  void showWidget() {
    setState(() {
      widgetVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      widgetVisible = false;
    });
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(children: [
          GestureDetector(
            onTap: () {
              showWidget();
              _value = 1;
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5.r)),
              height: 55.h,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 21.w),
                    Text(
                      'English',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 200.w),
                    Transform.scale(
                      scale: 1.w,
                      child: Radio(
                        groupValue: _value,
                        value: 1,
                        activeColor: Color.fromRGBO(46, 204, 113, 1),
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                            showWidget();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              showWidget();
              _value = 2;
            },
            child: Container(
              height: 55.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(width: 21.w),
                Text(
                  'नेपाली',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 215.w),
                Transform.scale(
                  scale: 1.w,
                  child: Radio(
                      groupValue: _value,
                      value: 2,
                      activeColor: Color.fromRGBO(46, 204, 113, 1),
                      onChanged: (value) {
                        return setState(() {
                          _value = value;

                          showWidget();
                        });
                      }),
                ),
              ]),
            ),
          ),
          SizedBox(height: 29.h),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: widgetVisible,
            child: Container(
              child: Column(
                children: [
                  MaterialButton(
                    height: 51.h,
                    minWidth: 334.w,
                    color: Color.fromRGBO(46, 204, 113, 1),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhnNumberScreen()),
                      );
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Text(
                    '*You can change the language later in the setting.',
                    style: TextStyle(
                      color: Color.fromRGBO(148, 148, 148, 1),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
