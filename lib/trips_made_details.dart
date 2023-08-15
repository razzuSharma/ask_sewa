import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsMadeDetails extends StatelessWidget {
  const TripsMadeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
          toolbarHeight: 75.w,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          leading: Icon(
            Icons.arrow_back,
            size: 30.w,
            color: Colors.black,
          ),
          title: Text(
            'Trip Details',
            style: TextStyle(
                fontSize: 18.w,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          centerTitle: true,
          bottom: PreferredSize(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: Color.fromRGBO(218, 218, 218, 1))),
                ),
              ),
              preferredSize: Size.fromHeight(4))),
      body: Column(
        children: [
          SizedBox(
            height: 50.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 96.w),
            child: Text(
              'August 24, Tuesday 2021',
              style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            'Net Earnings',
            style: TextStyle(fontSize: 14.w, fontWeight: FontWeight.w700),
          ),
          Text(
            'Rs.70',
            style: TextStyle(fontSize: 34.w, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.only(top: 42.w, left: 19.w),
            child: Row(
              children: [
                Text(
                  'Net Earnings',
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 208.w,
                ),
                Text(
                  'Rs 70',
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
