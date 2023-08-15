import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndPolicies extends StatelessWidget {
  const TermsAndPolicies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: EdgeInsets.only(left: 77.w, top: 65.w),
                    child: Text(
                      'Terms and Policies',
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
              height: 690.w,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 17.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.w),
                      child: Image.asset(
                        'assets/mm.png',
                      ),
                    ),
                    SizedBox(
                      height: 31.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 14.w,
                        ),
                        Container(
                          height: 1.w,
                          width: 53.w,
                          color: Colors.black,
                        ),
                        Text(
                          "  Accepting the terms  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.w,
                              color: Color.fromRGBO(46, 204, 113, 1)),
                        ),
                        Container(
                          height: 1.w,
                          width: 157.w,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Tristique nulla tortor, magna sit.\nAenean magna eget odio condimentum. Felis \nnulla et purus, id in. Vitae, amet sit eget vel\nnunc. Ac maecenas a vitae a quis ultricies nec \nsenectus. Quisque pretium adipiscing.",
                        style: TextStyle(
                            fontSize: 16.w,
                            fontWeight: FontWeight.w400,
                            height: 1.3),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 14.w,
                        ),
                        Container(
                          height: 1.w,
                          width: 53.w,
                          color: Colors.black,
                        ),
                        Text(
                          "  Who may use the services  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.w,
                              color: Color.fromRGBO(46, 204, 113, 1)),
                        ),
                        Container(
                          height: 1.w,
                          width: 117.w,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Tristique nulla tortor, magna sit.\nAenean magna eget odio condimentum. Felis \nnulla et purus, id in. Vitae, amet sit eget vel \nnunc. Ac maecenas a vitae a quis ultricies nec \nsenectus. Quisque pretium adipiscing.",
                        style: TextStyle(
                            fontSize: 16.w,
                            fontWeight: FontWeight.w400,
                            height: 1.3),
                      ),
                    ),
                    SizedBox(
                      height: 30.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 14.w,
                        ),
                        Container(
                          height: 1.w,
                          width: 53.w,
                          color: Colors.black,
                        ),
                        Text(
                          "  Getting Started  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.w,
                              color: Color.fromRGBO(46, 204, 113, 1)),
                        ),
                        Container(
                          height: 1.w,
                          width: 199.w,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Tristique nulla tortor, magna sit.\nAenean magna eget odio condimentum. Felis \nnulla et purus, id in. Vitae, amet sit eget vel \nnunc. Ac maecenas a vitae a quis ultricies nec \nsenectus. Quisque pretium adipiscing.",
                        style: TextStyle(
                            fontSize: 16.w,
                            fontWeight: FontWeight.w400,
                            height: 1.3),
                      ),
                    ),
                    SizedBox(
                      height: 50.w,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
