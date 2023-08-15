import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 124.w,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3.w, color: Colors.grey))),
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
                      'E-mail',
                      style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 29.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Container(
                width: 371.w,
                height: 53.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "yonahime@gmail.com",
                      hintStyle: TextStyle(
                          fontSize: 18.w,
                          height: 0.5.w,
                          color: Color.fromRGBO(0, 0, 0, 0.45)),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.w,
                      ),
                      fillColor: Color.fromRGBO(237, 237, 237, 1),
                      filled: true,
                      focusedBorder: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          width: 1.w,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r))),
                ),
              ),
            ),
            SizedBox(
              height: 7.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Container(
                  width: 371.w,
                  height: 53.w,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      border: Border.all(
                          width: 1.w, color: Color.fromRGBO(0, 0, 0, 0.25)),
                      borderRadius: BorderRadius.all(Radius.circular(5.w))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Let others find using my email address',
                        style: TextStyle(
                            fontSize: 15.w,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 0.45)),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                            if (value) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.grey,
                                      content: Text(
                                        'Find using email address enabled.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.grey,
                                      content: Text(
                                        'Find using email address disabled.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )));
                            }
                          });
                        },
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 29.w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 23.w,
                ),
                Text(
                  'Your email address is verified',
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Image.asset(
                  'assets/hand.png',
                  height: 19.w,
                  width: 19.w,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
