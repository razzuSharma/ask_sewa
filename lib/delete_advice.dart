import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/welcome_screen.dart';

class DeleteAdvice extends StatefulWidget {
  const DeleteAdvice({Key? key}) : super(key: key);

  @override
  _DeleteAdviceState createState() => _DeleteAdviceState();
}

class _DeleteAdviceState extends State<DeleteAdvice> {
  dynamic value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
        toolbarHeight: 70.w,
        shape: Border(bottom: BorderSide(width: 0.1.w, color: Colors.grey)),
        automaticallyImplyLeading: false,
        title: Text(
          "Delete profile",
          style: TextStyle(
              fontSize: 18.w, fontWeight: FontWeight.w700, color: Colors.black),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 40.w),
            child: Text(
              "It's advisable for you to rewuest your data\nto be sent to your email.",
              style: TextStyle(fontSize: 18.w),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 28.w, left: 10.w),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  this.value = true;
                });
              },
              child: Container(
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.w,
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
                          });
                        },
                      ),
                    ),
                    Text(
                      'Yes, send my data to my email',
                      style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(75, 75, 75, 1)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 469.w, left: 37.w),
            child: MaterialButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) {
                      Future.delayed(Duration(seconds: 2), () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      });
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.w)),
                        content: Container(
                          height: 520.w,
                          width: 374.w,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 91.w,
                              ),
                              Image.asset(
                                'assets/404.png',
                                height: 135.w,
                                width: 302.w,
                              ),
                              SizedBox(
                                height: 49.w,
                              ),
                              Text(
                                'OPPS!',
                                style: TextStyle(fontSize: 24.w),
                              ),
                              SizedBox(
                                height: 24.w,
                              ),
                              Text(
                                'Your profile has been deleted.',
                                style: TextStyle(fontSize: 14.w),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.w)),
              color: Color.fromRGBO(46, 204, 113, 1),
              height: 51.w,
              minWidth: 339.w,
              child: Text(
                'Confirm Deletion',
                style: TextStyle(
                    fontSize: 18.w, color: Colors.white, height: 2.5.w),
              ),
            ),
          )
        ],
      ),
    );
  }
}
