import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/delete_advice.dart';

class DeleteProfile extends StatelessWidget {
  const DeleteProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        appBar: AppBar(
          toolbarHeight: 70.w,
          shape: Border(bottom: BorderSide(width: 0.1.w, color: Colors.grey)),
          automaticallyImplyLeading: false,
          title: Text(
            "Delete Profile",
            style: TextStyle(
                fontSize: 18.w,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30.w,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 40.w,
              ),
              child: Text(
                'Can you please share us what was not working?\nWe are fixing bugs as soon as we spot them. If\nsomething slipped through our fingers, we\nwould be grateful to be aware of it and fix it.',
                style: TextStyle(fontSize: 16.w),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19.w),
              height: 313.w,
              width: 376.w,
              decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                    border: InputBorder.none,
                    hintText: 'Your explanation is entirely optional.',
                    hintStyle: TextStyle(
                        fontSize: 16.w, color: Color.fromRGBO(0, 0, 0, 0.4))),
              ),
            ),
            SizedBox(
              height: 38.w,
            ),
            MaterialButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.w)),
                        content: Container(
                          alignment: Alignment.topRight,
                          height: 279.w,
                          width: 376.w,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.w))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkResponse(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.cancel_rounded,
                                  size: 25.w,
                                ),
                              ),
                              SizedBox(
                                height: 26.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text(
                                  'We have sent Code to 98******77,\nType code to delete your account.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 17.w),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 26.w),
                                height: 51.w,
                                width: 339.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.w)),
                                  border: Border.all(
                                      width: 1.w,
                                      color: Color.fromRGBO(0, 0, 0, 0.2)),
                                ),
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 23.w,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DeleteAdvice()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.w)),
                                color: Color.fromRGBO(46, 204, 113, 1),
                                height: 51.w,
                                minWidth: 339.w,
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontSize: 18.w,
                                      color: Colors.white,
                                      height: 2.5.w),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              color: Color.fromRGBO(46, 204, 113, 1),
              height: 51.w,
              minWidth: 339.w,
              child: Text(
                'Continue',
                style: TextStyle(
                    fontSize: 18.w, color: Colors.white, height: 2.5.w),
              ),
            )
          ],
        ),
      ),
    );
  }
}
