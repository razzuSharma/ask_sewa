import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportProblem extends StatefulWidget {
  const ReportProblem({Key? key}) : super(key: key);

  @override
  _ReportProblemState createState() => _ReportProblemState();
}

class _ReportProblemState extends State<ReportProblem> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: EdgeInsets.only(left: 79.w, top: 65.w),
                      child: Text(
                        'Report a Problem',
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
                height: 30.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 27.w),
                child: Text(
                  "Name*:",
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 6.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Container(
                  height: 38.w,
                  color: Color.fromRGBO(237, 237, 237, 1),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    enableInteractiveSelection: true,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.w),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your current address';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              // phone Number
              SizedBox(
                height: 30.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 27.w),
                child: Text(
                  "Phone number*:",
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 6.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Container(
                  height: 38.w,
                  color: Color.fromRGBO(237, 237, 237, 1),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    enableInteractiveSelection: true,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.w),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade400, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your current address';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              // Email
              SizedBox(
                height: 30.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 27.w),
                child: Text(
                  "Email*:",
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Container(
                  height: 38.w,
                  color: Color.fromRGBO(237, 237, 237, 1),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    enableInteractiveSelection: true,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.w),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your current address';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 27.w,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Text(
                  "Please provide as much details as possible so we can better identify the problems.",
                  style: TextStyle(
                      fontSize: 14.w, fontWeight: FontWeight.w400, height: 1.3),
                ),
              ),
              SizedBox(
                height: 30.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Text(
                  "What is the exact error message that you received?",
                  style: TextStyle(
                      fontSize: 18.w, fontWeight: FontWeight.w400, height: 1.3),
                ),
              ),
              SizedBox(
                height: 33.w,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Focus(
                  autofocus: true,
                  child: Container(
                    height: 125.w,
                    width: 360.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.25)),
                        color: Color.fromRGBO(237, 237, 237, 1)),
                    child: TextFormField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 30.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.w),
                child: MaterialButton(
                  autofocus: true,
                  height: 51.w,
                  minWidth: 339.w,
                  color: Color.fromRGBO(46, 204, 113, 1),
                  textColor: Colors.white,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text(
                          'Your Problem was reported.',
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        )),
                      );
                    }
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
