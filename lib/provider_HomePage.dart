import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/add_services.dart';
import 'package:rideon/dashboardnotification.dart';

import 'package:rideon/my_information.dart';
import 'package:rideon/profile_edit.dart';
import 'package:rideon/tap_screen.dart';

class ProviderHomePage extends StatefulWidget {
  const ProviderHomePage({Key? key}) : super(key: key);

  @override
  _ProviderHomePageState createState() => _ProviderHomePageState();
}

class _ProviderHomePageState extends State<ProviderHomePage> {
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  bool _showRequest = true;
  bool _showRequestDetail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      key: _key,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(106.5.w),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Column(children: [
              Container(
                height: 155.5.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 78.w),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 29.w,
                          ),
                          InkWell(
                              onTap: () {
                                _key.currentState!.openDrawer();
                              },
                              child: Container(
                                  width: 57.w,
                                  height: 57.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    height: 57.w,
                                    width: 57.w,
                                  ))),
                          SizedBox(
                            width: 16.w,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Namaste,\n',
                              style: TextStyle(
                                  fontSize: 16.w,
                                  color: Color.fromRGBO(106, 106, 106, 1),
                                  fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Annonymous23445',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(46, 204, 113, 1),
                                    fontSize: 16.w,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 109.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DashboardNotification()),
                              );
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/noti.png',
                                height: 25.w,
                                width: 20.w,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 16.w),
                            height: 9.w,
                            width: 9.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(46, 204, 113, 1),
                                shape: BoxShape.circle),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 18.w, left: 29.w),
            child: Row(
              children: [
                Text(
                  'Show Request',
                  style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.w700, height: 2.w),
                ),
                SizedBox(
                  width: 207.w,
                ),
                CupertinoSwitch(
                  value: _showRequest,
                  onChanged: (val) {
                    setState(() {
                      _showRequest = val;
                    });
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 17.w,
          ),
          _showRequest
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: 23.w),
                  height: 279.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w)),
                  child: _showRequestDetail ? requestDetail() : requests())
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 44.w),
                  child: Text(
                    "Now, you will not see any requests. Turn on 'Show Request to view the requests.'",
                    style: TextStyle(
                        fontSize: 13.w,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0, 0, 0, 0.5)),
                  ),
                ),
          SizedBox(
            height: 29.w,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            height: 250.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.w)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 23.w, left: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Tasks',
                          style: TextStyle(
                              fontSize: 16.w,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(64, 64, 64, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 1.w, color: Color.fromRGBO(0, 0, 0, 0.1)),
                  Container(
                    height: 1.w,
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      'No recent Task has been found.',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(64, 64, 64, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 29.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: MaterialButton(
              height: 51.w,
              minWidth: 334.w,
              color: Color.fromRGBO(46, 204, 113, 1),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddServices()));
              },
              child: Text(
                'Add Services',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.w,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.w,
          )
        ],
      ),
      drawer: SafeArea(
        child: Container(
          width: 335.w,
          child: Drawer(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 82.w),
                    child: Container(
                      height: 151.w,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/pig.png',
                            alignment: Alignment.topCenter,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            'Maki Zenin',
                            style: TextStyle(
                              fontSize: 17.w,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text('+9779863704521',
                              style: TextStyle(
                                  fontSize: 14.w,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.45))),
                          Padding(
                            padding: EdgeInsets.only(top: 10.5.w),
                            child: Divider(
                              height: 0.5.w,
                              color: Color.fromRGBO(218, 218, 218, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileEdit()));
                    },
                    leading: Image.asset(
                      'assets/pe1.png',
                      height: 20.w,
                      width: 20.w,
                    ),
                    horizontalTitleGap: 0.w,
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16.w,
                      ),
                    ),
                    trailing: Wrap(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(46, 204, 113, 1),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyInformation()));
                    },
                    leading: Image.asset(
                      "assets/myinfo.png",
                      height: 25.w,
                      width: 20.6,
                    ),
                    horizontalTitleGap: 0.w,
                    title: Text(
                      'My Information',
                      style: TextStyle(
                        fontSize: 16.w,
                      ),
                    ),
                    trailing: Wrap(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(46, 204, 113, 1),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TapsScreen()));
                    },
                    leading: Image.asset(
                      'assets/handsup.png',
                      height: 25..w,
                      width: 25..w,
                    ),
                    horizontalTitleGap: 0.w,
                    title: Text(
                      'Switch to Customer',
                      style: TextStyle(
                        fontSize: 16.w,
                      ),
                    ),
                    trailing: Wrap(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(46, 204, 113, 1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget requests() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 23.w, left: 16.w),
            child: Text(
              'Requests',
              style: TextStyle(
                  fontSize: 16.w,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(64, 64, 64, 1)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.w),
            height: 0.1.w,
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              setState(() {
                _showRequestDetail = true;
              });
            },
            leading: Container(
              height: 40.w,
              width: 40.w,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('assets/x.png'),
            ),
            title: Text('Maki Zenin'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 15.w,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Jahada Rd',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            trailing: Text('11:11 AM'),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.w),
            height: 0.1.w,
            color: Colors.black,
          ),
          ListTile(
            leading: Container(
              height: 40.w,
              width: 40.w,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('assets/y.png'),
            ),
            title: Text('Maki Zenin'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 15.w,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Bargachi',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            trailing: Text('12:12 PM'),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.w),
            height: 0.1.w,
            color: Colors.black,
          ),
          ListTile(
            leading: Container(
              height: 40.w,
              width: 40.w,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('assets/x.png'),
            ),
            title: Text('Maki Zenin'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 15.w,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Jahada Rd',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            trailing: Text('04:44 PM'),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.w),
            height: 0.1.w,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget requestDetail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Stack(children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 5.w),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _showRequestDetail = false;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.w,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10.w, left: 14.w),
                  child: Text(
                    "Hey! Maki wants your help.",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.w,
                        color: Color.fromRGBO(46, 204, 113, 1)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.w),
              height: 0.5,
              color: Colors.black,
            ),
            SizedBox(
              height: 10.w,
            ),
            ListTile(
              leading: Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/x.png'),
              ),
              title: Text('Maki Zenin'),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15.w,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'Jahada Rd',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              trailing: Text('11:11 AM'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.w, left: 10.w),
              child: Row(
                children: [
                  Text(
                    'Issue:',
                    style: TextStyle(
                        height: 1.2.w,
                        fontSize: 12.w,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 50.w,
                    width: 255.w,
                    child: Text(
                      'The water is overflowing through broken tap.',
                      style: TextStyle(color: Colors.green, fontSize: 14.w),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: deprecated_member_use
                OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w)),
                    onPressed: () {
                      setState(() {
                        _showRequestDetail = false;
                      });
                    },
                    borderSide:
                        BorderSide(color: Color.fromRGBO(46, 203, 113, 1)),
                    color: Colors.green,
                    child: Text('Decline'),
                    highlightedBorderColor: Colors.amber),
                // ignore: deprecated_member_use
                OutlineButton(
                  highlightedBorderColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.w)),
                  onPressed: () {
                    showCupertinoDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Container(
                              height: 50.w,
                              child: Row(
                                children: [
                                  Text(
                                    'Phone no:',
                                    style: TextStyle(fontSize: 16.w),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        "9801010101",
                                        style: TextStyle(
                                            fontSize: 16.w,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                43, 203, 113, 1)),
                                      )),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  borderSide:
                      BorderSide(color: Color.fromRGBO(46, 203, 113, 1)),
                  color: Colors.red,
                  child: Text('Accept'),
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }

  OutlineButton(
      {required RoundedRectangleBorder shape,
      required Null Function() onPressed,
      required BorderSide borderSide,
      required MaterialColor color,
      required Text child,
      required MaterialColor highlightedBorderColor}) {}
}
