import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookARdidePage extends StatelessWidget {
  const BookARdidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 219, 239, 1),
        body: Stack(
          children: [
            Positioned(
                top: 344.w,
                child: Image.asset(
                  'assets/white1.png',
                  height: 552.w,
                  width: 414.w,
                )),
            Positioned(
                top: 177.w,
                left: 114.w,
                child: Image.asset(
                  'assets/phngirl.png',
                  height: 136.w,
                  width: 186.w,
                )),
            Positioned(
                top: 514.w,
                left: 33.w,
                child: Container(
                  height: 330.w,
                  width: 348.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book A Ride\nNow!',
                        style: TextStyle(
                            fontSize: 36.w,
                            color: Color.fromRGBO(253, 129, 188, 1)),
                      ),
                      Text(
                        'You can enter your pick-up and drop-off\nlocation, view all driver details, and confirm your\nrequest.',
                        style: TextStyle(
                            letterSpacing: 0.2.w,
                            fontSize: 14.w,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 0.6)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 55.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.w),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {},
                            color: Color.fromRGBO(249, 219, 239, 1),
                            height: 51.w,
                            minWidth: 339.w,
                            child: Text(
                              "LET' GO!",
                              style: TextStyle(
                                  fontSize: 15.w, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
  
  FlatButton({required Null Function() onPressed, required Color color, required double height, required double minWidth, required Text child}) {}
}
