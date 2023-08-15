import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/trips_made_details.dart';

class MyEarnings extends StatefulWidget {
  const MyEarnings({Key? key}) : super(key: key);

  @override
  _MyEarningsState createState() => _MyEarningsState();
}

class _MyEarningsState extends State<MyEarnings> {
  bool _showEarning = false;

  Widget _day() {
    return SizedBox(
      height: 750.w,
      child: Column(
        children: [
          Container(height: 1.w, color: Color.fromRGBO(218, 218, 218, 1)),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 48.w),
                child: Column(
                  children: [
                    Text(
                      '10',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Trips',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              ),
              Container(
                  width: 1.w,
                  height: 48.w,
                  color: Color.fromRGBO(218, 218, 218, 1)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 47.w),
                child: Column(
                  children: [
                    Text(
                      '8h',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              ),
              Container(
                  width: 1.w,
                  height: 48.w,
                  color: Color.fromRGBO(218, 218, 218, 1)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 18.w),
                child: Column(
                  children: [
                    Text(
                      '15 km',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Distance Covered',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(height: 1.w, color: Color.fromRGBO(218, 218, 218, 1)),
          SizedBox(
            height: 30.w,
          ),
          Container(
            height: 581.w,
            width: 357.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.w)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 28.w,
                  ),
                  Text(
                    'Trips Made',
                    style:
                        TextStyle(fontSize: 18.w, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 12.w,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TripsMadeDetails()));
                    },
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  ListTile(
                    leading: Text(
                      '16:24 Pm',
                      style: TextStyle(
                          fontSize: 13.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15.w,
                    ),
                    title: Text(
                      'Rs.70',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.w, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.w,
          )
        ],
      ),
    );
  }

  Widget _total() {
    return SizedBox(
      child: Column(
        children: [
          Container(height: 1.w, color: Color.fromRGBO(218, 218, 218, 1)),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 48.w),
                child: Column(
                  children: [
                    Text(
                      '150',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Trips',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              ),
              Container(
                  width: 1.w,
                  height: 48.w,
                  color: Color.fromRGBO(218, 218, 218, 1)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 47.w),
                child: Column(
                  children: [
                    Text(
                      '48h',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              ),
              Container(
                  width: 1.w,
                  height: 48.w,
                  color: Color.fromRGBO(218, 218, 218, 1)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.w, horizontal: 18.w),
                child: Column(
                  children: [
                    Text(
                      '538 km',
                      style: TextStyle(
                          fontSize: 24.w, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Distance Covered',
                      style: TextStyle(
                          fontSize: 11.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(height: 1.w, color: Color.fromRGBO(218, 218, 218, 1))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          toolbarHeight: 151.w,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, size: 30.w, color: Colors.black)),
          title: Text(
            'My Earnings',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.w,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.w),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.4.w, color: Colors.black))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 25.w,
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today,
                                  size: 20.w,
                                  color: Color.fromRGBO(46, 204, 113, 1)),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '22 Aug - 28 Aug.2021',
                                    style: TextStyle(
                                        height: 2.w,
                                        fontSize: 16.w,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )),
                              Icon(Icons.arrow_drop_down,
                                  size: 30.w,
                                  color: Color.fromRGBO(46, 204, 113, 1))
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 25.w,
                        )
                      ],
                    ),
                    Container(
                      height: 3.w,
                      width: 204.w,
                      color: Color.fromRGBO(46, 204, 113, 1),
                    ),
                  ],
                ),
              ),
            ),
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 20.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 161.w),
            child: Text(
              'Net Earning',
              style: TextStyle(
                  fontSize: 14.w,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(64, 64, 64, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 128.w),
            child: Text('Rs.11000',
                style: TextStyle(fontSize: 34.w, fontWeight: FontWeight.w700)),
          ),
          Container(
            height: 213.w,
            width: 414.w,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 1,
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(218, 218, 218, 1),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 53.w,
                    left: 30.w,
                    child: Text(
                      '1000',
                      style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.25)),
                    )),
                Positioned(
                    top: 98.w,
                    left: 30.w,
                    child: Text(
                      '500',
                      style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.25)),
                    )),
                Positioned(
                    top: 140.w,
                    left: 30.w,
                    child: Text(
                      '100',
                      style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.25)),
                    )),
                Positioned(
                    top: 180.w,
                    left: 90.w,
                    child: SizedBox(
                      width: 280.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'S',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'M',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'T',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'W',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'T',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'F',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 45.w,
                    left: 80.w,
                    child: SizedBox(
                      width: 298.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          Container(
                            height: 70.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showEarning = true;
                              });
                            },
                            child: Container(
                              height: 106.w,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(163, 232, 192, 1),
                                  borderRadius: BorderRadius.circular(20.w)),
                            ),
                          ),
                          Container(
                            height: 80.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          Container(
                            height: 56.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          Container(
                            height: 125.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          Container(
                            height: 70.w,
                            width: 28.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(163, 232, 192, 1),
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 40.w,
          ),
          // _total()
          _showEarning ? _day() : _total()
        ],
      ),
    );
  }
}
