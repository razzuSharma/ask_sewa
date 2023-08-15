import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/tap_screen.dart';
import 'package:rideon/welcome_screen.dart';

class PrivacyPolicySceen extends StatefulWidget {
  @override
  _PrivacyPolicySceenState createState() => _PrivacyPolicySceenState();
}

class _PrivacyPolicySceenState extends State<PrivacyPolicySceen> {
  dynamic value = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 61.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 108.w,
            ),
            child: Image.asset(
              'assets/aasksewa.png',
              height: 198.w,
            ),
          ),
          SizedBox(
            height: 22.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 43.w),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  offset: const Offset(
                    3.0,
                    3.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ]),
              width: 328.w,
              height: 366.w,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    child: Text(
                      'Privacy Policies',
                      style: TextStyle(
                          fontSize: 18.w,
                          color: Color.fromRGBO(75, 75, 75, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Container(
                      height: 1.w,
                      color: Color.fromRGBO(46, 204, 113, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5.0),
                          color: Colors.white,
                          width: 277.w,
                          height: 272.w,
                          child: Scrollbar(
                            isAlwaysShown: true,
                            showTrackOnHover: true,
                            thickness: 5.w,
                            radius: Radius.circular(5.r),
                            interactive: true,
                            child: ListView(children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.\n\nNascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \n\n Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.\n\nNascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. ",
                                  style: TextStyle(
                                    height: 1.5.w,
                                    fontSize: 13.w,
                                    wordSpacing: 5,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(94, 94, 94, 1),
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ]),
                          )),
                      SizedBox(
                        width: 18.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 55.w,
          ),
          GestureDetector(
            onTap: () {
              showWidget();
              this.value = true;
            },
            child: Row(
              children: [
                SizedBox(
                  width: 65.w,
                ),
                Transform.scale(
                  scale: 1.1.w,
                  child: Checkbox(
                    checkColor: Colors.white,
                    activeColor: Color.fromRGBO(46, 204, 113, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(width: 1, color: Colors.black)),
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                        if (this.value) {
                          showWidget();
                        } else {
                          widgetVisible = false;
                        }
                      });
                    },
                  ),
                ), //Checkbox
                Text(
                  'I agree with the privacy policy',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14.w, height: 2.w),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 27.w,
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: widgetVisible,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  autofocus: true,
                  height: 28.w,
                  minWidth: 91.w,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(
                        color: Color.fromRGBO(46, 204, 113, 1),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Text(
                    'Decline',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.w,
                        height: 2.w),
                  ),
                ),
                MaterialButton(
                  autofocus: true,
                  height: 28.w,
                  minWidth: 91.w,
                  color: Color.fromRGBO(46, 204, 113, 1),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TapsScreen()),
                    );
                  },
                  child: Text(
                    'Accept',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.w,
                        height: 2.w),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
