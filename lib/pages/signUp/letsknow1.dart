import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/pages/signUp/letsknow2.dart';

class LetsGetTOKnow extends StatelessWidget {
  const LetsGetTOKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(163, 232, 192, 1),
        body: Container(
          height: 830.w,
          width: 366.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(110.w))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  'Lets get to know you',
                  style: TextStyle(
                    fontSize: 20.w,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.w, top: 20.w),
                child: TextFormField(
                  style: TextStyle(fontSize: 20.w, color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your full name',
                      hintStyle: TextStyle(
                          fontSize: 20.w,
                          color: Color.fromRGBO(0, 0, 0, 0.65))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 81.w, left: 33.w),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LetsGetToKnow1()));
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
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5.w)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 370.w, left: 33.w),
                child: Row(
                  children: [
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
            ],
          ),
        ),
      ),
    );
  }

  FlatButton(
      {required Null Function() onPressed,
      required double height,
      required double minWidth,
      required Text child,
      required RoundedRectangleBorder shape}) {}
}
