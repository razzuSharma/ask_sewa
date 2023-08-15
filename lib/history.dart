import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(58.w),
          child: AppBar(
              elevation: 0.5.w,
              backgroundColor: Color.fromRGBO(240, 240, 240, 1),
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 67.w),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.w,
                      ),
                    ),
                    SizedBox(
                      width: 130.w,
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                          height: 2.w,
                          fontSize: 18.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              ))),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 140.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "2022-2-15",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Repaired wall paint from 'Tony Painters.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "4/5",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 140.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "2022-2-4",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Bought a Laptop from 'Brothers Plaza'.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "5/5",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 140.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "2022-1-8",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Visited Godawari Park.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "3/5",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 140.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "2022-1-10",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Sent a courier from 'HK Suppliers.'",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "4.5/5",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            SizedBox(
              height: 20.w,
            )
          ],
        )
      ]),
    );
  }
}
