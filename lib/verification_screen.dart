import 'package:flutter/material.dart';

import 'package:rideon/phone_no_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/signUp/letsknow1.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: <Widget>[
          Positioned(
              top: 70.83.w,
              right: 357.83.w,
              child: IconButton(
                icon: Image.asset('assets/back.png'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhnNumberScreen()),
                  );
                },
              )),
          Positioned(
              top: 134.w,
              left: 32.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter your verification code',
                      style: TextStyle(
                        fontSize: 20.w,
                        color: Color.fromRGBO(52, 52, 52, 1),
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 10.w,
                  ),
                  Text(
                    '+977 9863704521',
                    style: TextStyle(
                        fontSize: 18.w,
                        color: Color.fromRGBO(64, 64, 64, 1),
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
            top: 300.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Row(
                children: [
                  SizedBox(width: 25.w),
                  Text(
                    "Didn't received a code?",
                    style: TextStyle(
                      fontSize: 15.w,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Resend code?',
                          style: TextStyle(
                            fontSize: 15.w,
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                          ))),
                ],
              ),
            ),
          ),
          Positioned(
            top: 329.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 58.w),
              child: Row(
                children: [
                  SizedBox(width: 25.w),
                  Text(
                    "Is number incorrect?",
                    style:
                        TextStyle(fontSize: 15.w, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhnNumberScreen()));
                      },
                      child: Text('Edit Number',
                          style: TextStyle(
                            fontSize: 15.w,
                            color: Colors.green,
                          ))),
                ],
              ),
            ),
          ),
          Positioned(
              top: 229.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: OtpCodeBox(),
              )),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.w),
                child: MaterialButton(
                  autofocus: true,
                  height: 51.w,
                  minWidth: 339.w,
                  color: Color.fromRGBO(46, 204, 113, 1),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LetsGetTOKnow()),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 44.w,
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class OtpCodeBox extends StatefulWidget {
  const OtpCodeBox({Key? key}) : super(key: key);

  @override
  _OtpCodeBoxState createState() => _OtpCodeBoxState();
}

class _OtpCodeBoxState extends State<OtpCodeBox> {
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();
  FocusNode f6 = FocusNode();

  void nextField({String? value, required FocusNode focusNode}) {
    if (value?.length == 1) {
      FocusScope.of(context).requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      children: [
        SizedBox(
          width: 50.w,
          height: 50.w,
          child: TextFormField(
            focusNode: f1,
            textInputAction: TextInputAction.next,
            autofocus: true,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 20.w,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(190, 190, 190, 1),
                  width: 1.0,
                ),
              ),
            ),
            onChanged: (String newVal) {
              if (newVal.length == 1) {
                f1.unfocus();
                FocusScope.of(context).requestFocus(f2);
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w),
          child: SizedBox(
            width: 50.w,
            height: 50.w,
            child: TextFormField(
              focusNode: f2,
              textAlign: TextAlign.center,
              autofocus: true,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20.w,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(190, 190, 190, 1),
                    width: 1.0,
                  ),
                ),
              ),
              onChanged: (String newVal) {
                if (newVal.length == 1) {
                  f2.unfocus();
                  FocusScope.of(context).requestFocus(f3);
                }
              },
            ),
          ),
        ),
        SizedBox(
          width: 50.w,
          height: 50.w,
          child: TextFormField(
            textAlign: TextAlign.center,
            autofocus: true,
            focusNode: f3,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 20.w,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(190, 190, 190, 1),
                  width: 1.0,
                ),
              ),
            ),
            onChanged: (String newVal) {
              if (newVal.length == 1) {
                f3.unfocus();
                FocusScope.of(context).requestFocus(f4);
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w),
          child: SizedBox(
            width: 50.w,
            height: 50.w,
            child: TextFormField(
              focusNode: f4,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20.w,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(190, 190, 190, 1),
                    width: 1.0,
                  ),
                ),
              ),
              onChanged: (String newVal) {
                if (newVal.length == 1) {
                  f4.unfocus();
                  FocusScope.of(context).requestFocus(f5);
                }
              },
            ),
          ),
        ),
        SizedBox(
          width: 50.w,
          height: 50.w,
          child: TextFormField(
            focusNode: f5,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 20.w,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(190, 190, 190, 1),
                  width: 1.0,
                ),
              ),
            ),
            onChanged: (String newVal) {
              if (newVal.length == 1) {
                f5.unfocus();
                FocusScope.of(context).requestFocus(f6);
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w),
          child: SizedBox(
            width: 50.w,
            height: 50.w,
            child: TextFormField(
              focusNode: f6,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20.w,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(190, 190, 190, 1),
                    width: 1.0,
                  ),
                ),
              ),
              onChanged: (String newVal) {
                if (newVal.length == 1) {
                  f6.unfocus();
                }
              },
            ),
          ),
        ),
      ],
    ));
  }
}
