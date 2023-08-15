import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
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
                    padding: EdgeInsets.only(left: 10.w, top: 59.w),
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
                  padding: EdgeInsets.only(left: 101.w, top: 65.w),
                  child: Text(
                    'Help Center',
                    style: TextStyle(
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 680.w,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                  shrinkWrap: true,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 23.w, top: 25.w),
                      child: Text(
                        'Freqently Asked Questions',
                        style: TextStyle(
                            fontSize: 20.w, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 14.w,
                    ),
                    Image.asset(
                      'assets/faq.png',
                      height: 146,
                      width: 261,
                    ),
                    SizedBox(
                      height: 31.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Text(
                        'Q.1 How are we going to get help from this application ?',
                        style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Since, we are allowing free registration to the providers. The reachers of the application will definately look for the best services. Likewise, you would be recognised quick and rapidly.',
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        'Q.2 How often scammers would be present?',
                        style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'There is very low chances of getting scammers in our application. This is why, because we thorouhly verify the user through KYC verifications.',
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        'Q.3 How you will be benifited from the application?',
                        style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'The free registration is only till some extends. Once the application is well known. We will make the packages according to the use of customer and providers both. ',
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        'Q.4 Can a customer also be provider?',
                        style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Yes, We have planned the application in such a way a customer also can create a provider account and switch from customer to provider and vice versa.',
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          height: 1.2.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.w,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
