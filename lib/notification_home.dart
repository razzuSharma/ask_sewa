import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationHome extends StatelessWidget {
  const NotificationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.w,
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: 18.w,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 27),
            child: Text(
              "Show Notifications1",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Container(
                height: 9,
                width: 9,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(46, 204, 113, 1)),
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                "Request an ride for your upcoming \n appointment starts now. Get a ride now.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 43,
          ),
          Row(children: [
            SizedBox(
              width: 18,
            ),
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(46, 204, 113, 1)),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "Your ride to Dharan will be ready in 5 \n Minutes.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            )
          ]),
          SizedBox(
            height: 43,
          ),
          Row(children: [
            SizedBox(
              width: 18,
            ),
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(46, 204, 113, 1)),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "Your ride is arriving now. Your driver \n will wait 2 Minutes before leaving. \n Enjoy the  ride!",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            )
          ]),
        ],
      ),
    );
  }
}
