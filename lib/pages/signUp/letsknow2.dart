import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/pages/signUp/letsknow3.dart';

class LetsGetToKnow1 extends StatefulWidget {
  const LetsGetToKnow1({Key? key}) : super(key: key);

  @override
  _LetsGetToKnow1State createState() => _LetsGetToKnow1State();
}

class _LetsGetToKnow1State extends State<LetsGetToKnow1> {
  dynamic _value;
  bool widgetVisible = false;
  dynamic _colorText1 = Color.fromRGBO(46, 204, 113, 1);

  // Color _colorText1 = Color.fromRGBO(46, 204, 113, 0.5);
  // Color _colorText2 = Color.fromRGBO(46, 204, 113, 0.5);
  // Color _colorText3 = Color.fromRGBO(46, 204, 113, 0.5);

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(163, 232, 192, 1),
        body: Container(
            height: 830.w,
            width: 366.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(110.w))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 69.w),
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
                padding: EdgeInsets.only(top: 45.w, left: 33.w),
                child: Text(
                  'Your Gender',
                  style: TextStyle(
                    fontSize: 20.w,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.w, left: 33.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 100.w),
                      child: GestureDetector(
                        onTap: () {
                          showWidget();
                          _value = 1;
                        },
                        child: Container(
                          height: 25.w,
                          child: Row(
                            children: [
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
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Women',
                                style: TextStyle(
                                    fontSize: 18.w, color: _colorText1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 100.w),
                      child: GestureDetector(
                        onTap: () {
                          showWidget();
                          _value = 2;
                        },
                        child: Container(
                          height: 25.w,
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 1.w,
                                child: Radio(
                                  groupValue: _value,
                                  value: 2,
                                  activeColor: Color.fromRGBO(46, 204, 113, 1),
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                      showWidget();
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Man',
                                style: TextStyle(
                                    fontSize: 18.w, color: _colorText1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 100.w),
                      child: GestureDetector(
                        onTap: () {
                          showWidget();
                          _value = 3;
                        },
                        child: Container(
                          height: 25.w,
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 1.w,
                                child: Radio(
                                  groupValue: _value,
                                  value: 3,
                                  activeColor: Color.fromRGBO(46, 204, 113, 1),
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                      showWidget();
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Non-Binary',
                                style: TextStyle(
                                    fontSize: 18.w, color: _colorText1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: widgetVisible,
                child: Padding(
                  padding: EdgeInsets.only(top: 190.w, left: 40.w),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LetsGetTOKnow3()));
                    },
                    height: 55.w,
                    minWidth: 275.w,
                    child: Text('Next',
                        style: TextStyle(
                            height: 2.w,
                            color: Color.fromRGBO(46, 204, 113, 1),
                            fontSize: 22.w)),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(46, 204, 113, 1),
                            width: 1.w,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5.w)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 225.w, left: 36.w),
                child: Row(
                  children: [
                    Container(
                      height: 3.w,
                      width: 15.w,
                      color: Color.fromRGBO(92, 118, 191, 0.5),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 3.w,
                      width: 30.w,
                      color: Color.fromRGBO(163, 232, 192, 1),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 3.w,
                      width: 15.w,
                      color: Color.fromRGBO(92, 118, 191, 0.5),
                    )
                  ],
                ),
              )
            ])));
  }

  FlatButton(
      {required Null Function() onPressed,
      required double height,
      required double minWidth,
      required Text child,
      required RoundedRectangleBorder shape}) {}
}
