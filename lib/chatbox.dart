import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.w),
            child: AppBar(
              elevation: 0.5.w,
              automaticallyImplyLeading: false,
              flexibleSpace: Container(
                height: 150.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.w),
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
                            padding: EdgeInsets.only(left: 110.w, top: 60.w),
                            child: SizedBox(
                              child: Text(
                                'Yona Hime',
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text("This is chat section."),
          )),
    );
  }
}
