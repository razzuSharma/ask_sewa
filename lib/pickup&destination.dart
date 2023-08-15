import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/googlemap.dart';

class PickupAndDestination extends StatefulWidget {
  const PickupAndDestination({Key? key}) : super(key: key);

  @override
  _PickupAndDestinationState createState() => _PickupAndDestinationState();
}

class _PickupAndDestinationState extends State<PickupAndDestination> {
  bool _showRiders = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GoogleMapScreen(),
          Positioned(
              top: 667.w,
              left: 10.w,
              child: Container(
                height: 235.w,
                width: 394.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.w, left: 25.w),
                      child: Row(
                        children: [
                          Container(
                            height: 10.w,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(218, 218, 218, 1),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 324.w,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10.w),
                                    hintText: 'Pick Up Location',
                                    hintStyle: TextStyle(
                                        fontSize: 16.w,
                                        color:
                                            Color.fromRGBO(218, 218, 218, 1)))),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Container(
                        height: 0.3,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.w, left: 25.w),
                      child: Row(
                        children: [
                          Container(
                            height: 10.w,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(46, 204, 113, 1),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 324.w,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10.w),
                                    hintText: 'Destination',
                                    hintStyle: TextStyle(
                                        fontSize: 16.w,
                                        color:
                                            Color.fromRGBO(218, 218, 218, 1)))),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Container(
                        height: 0.25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 18.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.w),
                      child: SizedBox(
                        height: 49.w,
                        width: 353.w,
                        child: MaterialButton(
                          onPressed: () {
                            _searchingRider();
                          },
                          color: Color.fromRGBO(46, 204, 113, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.w)),
                          child: Text(
                            'Request Ride',
                            style: TextStyle(
                                fontSize: 18.w,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget _cancelRide() {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        )
      ],
    );
  }

  Widget _searchingForBike() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 14.w,
        ),
        Padding(
          padding: EdgeInsets.only(left: 194.w),
          child: Container(
            height: 10.w,
            width: 26.w,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 2.w, color: Color.fromRGBO(196, 196, 196, 1)),
                    bottom: BorderSide(
                        width: 2.w, color: Color.fromRGBO(196, 196, 196, 1)))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 29.w, left: 28.w),
          child: Text(
            'Searching for Bike...',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.w,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 9.w,
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(top: 33.w, left: 16.w),
          child: Row(
            children: [
              Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 224, 224, 1),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10.w,
                    width: 51.w,
                    color: Color.fromRGBO(224, 224, 224, 1),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Container(
                    height: 10.w,
                    width: 75.w,
                    color: Color.fromRGBO(224, 224, 224, 1),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 36.w, left: 14.w),
          child: Text(
            'Trip Details',
            style: TextStyle(fontSize: 15.w, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.w, left: 20.w),
          child: Row(
            children: [
              Image.asset(
                'assets/lel.png',
                height: 16.w,
                width: 16.w,
              ),
              Text(
                ' Kanchanbari, hanuman marga, Biratnagar',
                style: TextStyle(fontSize: 12.w, color: Colors.black),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 28.w, top: 2.w),
          child: Container(width: 1, height: 25.w, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.w, left: 20.w),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 20.w,
                color: Color.fromRGBO(46, 204, 113, 1),
              ),
              Text(
                ' Traffic Chowk,ranbow galli, Biratnagar',
                style: TextStyle(fontSize: 12.w, color: Colors.black),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.w, left: 17.w),
          child: Row(
            children: [
              Text(
                'Charge',
                style: TextStyle(
                    color: Colors.black, fontSize: 14.w, fontFamily: 'Polo'),
              ),
              Text(
                'Rs. 55',
                style: TextStyle(
                    color: Colors.black, fontSize: 14.w, fontFamily: 'Polo'),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 10.w),
          child: Text(
            'This is the estimated fare. This may vary.',
            style: TextStyle(
              fontSize: 10.w,
              color: Color.fromRGBO(0, 0, 0, 0.49),
            ),
          ),
        ),
        SizedBox(
          height: 22.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.5.w),
          child: MaterialButton(
            onPressed: () {
              setState(() {
                _showRiders = true;
              });
            },
            elevation: 0,
            height: 49.w,
            minWidth: 353.w,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.w)),
            color: Color.fromRGBO(224, 224, 224, 1),
            child: Text(
              'Cancel Request',
              style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }

  dynamic _searchingRider() {
    showCupertinoModalPopup(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Container(
              height: 460.w,
              width: 414.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.circular(10.w)),
              child: _showRiders ? _cancelRide() : _searchingForBike());
        });
  }
}
