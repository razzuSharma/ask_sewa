import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyInformation extends StatefulWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  _MyInformationState createState() => _MyInformationState();
}

class _MyInformationState extends State<MyInformation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          appBar: AppBar(
            toolbarHeight: 75.w,
            shape: Border(bottom: BorderSide(width: 0.2.w, color: Colors.grey)),
            automaticallyImplyLeading: false,
            title: Text(
              "My Information",
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
              SizedBox(
                height: 21.w,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                height: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.w))),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Color.fromRGBO(46, 204, 113, 0.1),
                  ),
                  tabs: <Widget>[
                    Tab(
                      iconMargin: EdgeInsets.only(bottom: 2.w),
                      icon: Icon(
                        Icons.person,
                        color: Colors.green.shade500,
                        size: 26.w,
                      ),
                      child: Text("Personal",
                          style: TextStyle(
                            fontSize: 15.w,
                            color: Colors.black,
                          )),
                    ),
                    Tab(
                      iconMargin: EdgeInsets.only(bottom: 2.w),
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.green.shade500,
                        size: 26.w,
                      ),
                      child: Text("Address",
                          style: TextStyle(
                            fontSize: 15.w,
                            color: Colors.black,
                          )),
                    ),
                    Tab(
                      iconMargin: EdgeInsets.only(bottom: 2.w),
                      icon: Icon(
                        Icons.copy_outlined,
                        color: Colors.green.shade500,
                        size: 26.w,
                      ),
                      child: Text("Documents",
                          style: TextStyle(
                            fontSize: 15.w,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.w,
              ),
              Container(
                  height: 540.w,
                  width: 366.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w)),
                  child: TabBarView(children: <Widget>[
                    ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 19.w, top: 16.w),
                          child: Row(
                            children: [
                              Text(
                                'Personal Details',
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 99.w),
                                height: 26.w,
                                width: 89.w,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(46, 204, 113, 1),
                                    borderRadius: BorderRadius.circular(15.w)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Icon(
                                      Icons.verified_sharp,
                                      size: 16.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Verified',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.w,
                                          height: 1.6.w),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Full Name',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Samridhi Sharma',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'DOB (BS)',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            '2057-01-06',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Gender',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Female',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Family Information',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Father's Name",
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Sankar Prasad Sharma',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Mother's Name",
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Savyata Khanal',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "GrandFather's Name",
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Bir Bahadur sharma',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Other Information',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Occupation',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Plumber',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Email-address',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'samridhi.sharma@hashtechnologies.net',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.w,
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 19.w, top: 16.w),
                          child: Row(
                            children: [
                              Text(
                                'Address Details',
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 99.w),
                                height: 26.w,
                                width: 89.w,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(46, 204, 113, 1),
                                    borderRadius: BorderRadius.circular(15.w)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Icon(
                                      Icons.verified_sharp,
                                      size: 16.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Verified',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.w,
                                          height: 1.6.w),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Current Address',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tintolia, Biratnagar Sub-Metropolitan City-12,\nMorang Koshi',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Permanent Address',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tintolia, Biratnagar Sub-Metropolitan City-12,\nMorang Koshi',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 19.w, top: 16.w),
                          child: Row(
                            children: [
                              Text(
                                'Documents Details',
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 68.w),
                                height: 26.w,
                                width: 89.w,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(46, 204, 113, 1),
                                    borderRadius: BorderRadius.circular(15.w)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Icon(
                                      Icons.verified_sharp,
                                      size: 16.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Verified',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.w,
                                          height: 1.6.w),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26.w,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Business',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'PAN Number',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            '70823121',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 19.w),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Owner Name',
                                            style: TextStyle(fontSize: 12.w),
                                          ),
                                          Text(
                                            'Sharma Brothers',
                                            style: TextStyle(
                                                fontSize: 15.w,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 36.w,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25.w,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(46, 204, 113, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.w),
                                            bottomRight:
                                                Radius.circular(10.w))),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    'Citizenship',
                                    style: TextStyle(
                                        fontSize: 17.w,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(46, 204, 113, 1)),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13.w, left: 22.w),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Citizenship Number',
                                          style: TextStyle(fontSize: 12.w),
                                        ),
                                        Text(
                                          '14-02-76-18313',
                                          style: TextStyle(
                                              fontSize: 15.w,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 10.w,
                                        ),
                                        Text(
                                          'Citizenship Issued From',
                                          style: TextStyle(fontSize: 12.w),
                                        ),
                                        Text(
                                          'Morang',
                                          style: TextStyle(
                                              fontSize: 15.w,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 18.w,
                                        ),
                                        Text(
                                          'Citizenship Picture (Front)',
                                          style: TextStyle(fontSize: 16.w),
                                        ),
                                        Container(
                                          height: 94.w,
                                          width: 320.w,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1),
                                          child: Icon(Icons.add_a_photo),
                                        ),
                                        SizedBox(
                                          height: 15.w,
                                        ),
                                        Text(
                                          'Citizenship Picture (Back)',
                                          style: TextStyle(fontSize: 16.w),
                                        ),
                                        Container(
                                          height: 94.w,
                                          width: 320.w,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1),
                                          child: Icon(Icons.add_a_photo),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 36.w,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.w,
                        ),
                      ],
                    )
                  ]))
            ],
          )),
    );
  }
}
