import 'package:flutter/material.dart';
import 'package:rideon/language_screen.dart';
import 'package:rideon/verification_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhnNumberScreen extends StatefulWidget {
  const PhnNumberScreen({Key? key}) : super(key: key);

  @override
  _PhnNumberScreenState createState() => _PhnNumberScreenState();
}

class _PhnNumberScreenState extends State<PhnNumberScreen> {
  bool isTextFiledFocus = false;
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                top: 70.83.w,
                right: 357.83.w,
                child: IconButton(
                  icon: Image.asset(
                    'assets/back.png',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LanguageScreen()),
                    );
                  },
                )),
            Positioned(
              top: 134.w,
              left: 32.w,
              child: Text(
                'Enter your mobile number',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.w,
                  color: Color.fromRGBO(52, 52, 52, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
                top: 204.w,
                left: 49.w,
                child: Image.asset(
                  'assets/flag.png',
                  height: 25.w,
                  width: 32.w,
                )),
            Positioned(
              top: 245.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.w),
                child: Container(
                  height: 1.w,
                  width: 339.w,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
                top: 204.w,
                left: 85.w,
                child: Text(
                  '+977',
                  style: TextStyle(
                      fontSize: 20.w, color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            Positioned(
                top: 205.w,
                left: 150.w,
                child: SizedBox(
                  height: 45.w,
                  width: 230.w,
                  child: Focus(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: null,
                      style: TextStyle(
                        fontSize: 20.w,
                      ),
                      autofocus: true,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: '9863704521',
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(205, 205, 205, 1)),
                      ),
                    ),
                    onFocusChange: (hasFocus) {
                      setState(() {
                        isTextFiledFocus = hasFocus;
                      });
                    },
                  ),
                )),
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.w),
                  child: Text(
                    '*By continuing you may receive an SMS for \n verification.',
                    style: TextStyle(
                        color: Color.fromRGBO(121, 121, 121, 1),
                        fontSize: 12.w),
                  ),
                ),
                SizedBox(
                  height: 12.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 47.w),
                  child: MaterialButton(
                    color: isTextFiledFocus
                        ? Color.fromRGBO(46, 204, 113, 1)
                        : Color.fromRGBO(214, 214, 214, 1),
                    autofocus: true,
                    height: 51.w,
                    minWidth: 339.w,
                    textColor: Colors.white,
                    onPressed: () {
                      if (isTextFiledFocus) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerificationScreen()),
                        );
                      } else {
                        myFocusNode.requestFocus();
                      }
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
                  height: 63.w,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
