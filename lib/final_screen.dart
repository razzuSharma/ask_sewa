import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rideon/dashboardnotification.dart';
import 'package:rideon/googlemap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/kyc_form.dart';
import 'package:rideon/pages/categories%20screens/courier.dart';
import 'package:rideon/pages/categories%20screens/gym.dart';
import 'package:rideon/pages/categories%20screens/institute.dart';
import 'package:rideon/pages/categories%20screens/park.dart';
import 'package:rideon/pages/categories%20screens/tenthouse.dart';
import 'package:rideon/pages/categories%20screens/categories.dart';

import 'package:rideon/profile_edit.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'pages/categories screens/food.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        key: _key,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(235.8.w),
            child: AppBar(
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: Column(children: [
                Container(
                  height: 285.w,
                  width: 414.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 75.w,
                      ),
                      Row(
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
                      SizedBox(
                        height: 23.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 29.w,
                          ),
                          Container(
                            width: 280.w,
                            height: 48.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText:
                                      "pumber,electrician,hotel,medical,park,shop,etc",
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(155, 155, 155, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.w),
                                  fillColor: Color.fromRGBO(243, 243, 243, 1),
                                  filled: true,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(46, 204, 113, 1)),
                            width: 50.w,
                            height: 50.w,
                            child: Icon(
                              Icons.save_rounded,
                              size: 25.w,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.w,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 37.w),
                            child: MaterialButton(
                              color: Color.fromRGBO(46, 204, 113, 1),
                              height: 41.w,
                              minWidth: 339.w,
                              textColor: Colors.white,
                              onPressed: () {},
                              child: Text(
                                'SEARCH',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.w,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            )),
        body: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 25.w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  'Our Services',
                  style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 180.w,
                ),
                TextButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesPage()));
                      }
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ))
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Stack(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 24.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => FoodPage()));
                      },
                      child: Container(
                        height: 114.w,
                        width: 141.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.w,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/food.png',
                              height: 88.52.w,
                              width: 125.48.w,
                            ),
                            Text(
                              'FOOD',
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => ParkPage()));
                      },
                      child: Container(
                        height: 114.w,
                        width: 141.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/park.png',
                              height: 83.w,
                              width: 125.w,
                            ),
                            Text(
                              'PARK',
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (content) => GymPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        height: 114.w,
                        width: 141.w,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 18.w),
                              child: Image.asset(
                                'assets/gym.png',
                                height: 59.w,
                                width: 125.w,
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 117.w,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 5.w,
                            ),
                            Text(
                              "GYM",
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => CourierPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        height: 114.w,
                        width: 141.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.w,
                            ),
                            Image.asset(
                              'assets/courier.png',
                              height: 73.w,
                              width: 125.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.w, top: 8.w),
                              child: Text(
                                'COURIER',
                                style: TextStyle(
                                    fontSize: 12.w,
                                    color: Color.fromRGBO(64, 64, 64, 1),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => InstitutePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        height: 114.w,
                        width: 141.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 9.w,
                            ),
                            Image.asset(
                              'assets/institute.png',
                              height: 73.w,
                              width: 125.w,
                            ),
                            SizedBox(
                              height: 5.w,
                            ),
                            Text(
                              "INSTITUTE",
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => TentHousePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        height: 114.w,
                        width: 141.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 9.w,
                            ),
                            Image.asset(
                              'assets/tent.png',
                              height: 67.w,
                              width: 177.w,
                            ),
                            SizedBox(
                              height: 10.w,
                            ),
                            Text(
                              "TENT HOUSE",
                              style: TextStyle(
                                  fontSize: 12.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.r,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        height: 114.w,
                        width: 131.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MORE",
                              style: TextStyle(
                                  fontSize: 14.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "SERVICES",
                              style: TextStyle(
                                  fontSize: 14.w,
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 29.w,
            ),
            Stack(children: [
              Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                height: 216.w,
                width: 414.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 19.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 29.w,
                        ),
                        Text(
                          'Your Current Location',
                          style: TextStyle(
                              fontSize: 16.w,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(64, 64, 64, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r)),
                      height: 127.w,
                      width: 350.w,
                      child: GoogleMap(
                          onMapCreated: _onMapCreated,
                          initialCameraPosition: CameraPosition(
                            target:
                                LatLng(26.454345279591255, 87.28084367032508),
                            zoom: 15,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 68.w,
                  right: 39.w,
                  child: IconButton(
                    icon: Image.asset(
                      'assets/lv.png',
                      height: 14.w,
                      width: 14.w,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GoogleMapScreen()),
                      );
                    },
                  )),
            ]),
            SizedBox(
              height: 20.w,
            ),
            Container(
              height: 300.w,
              width: 414.w,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      "What's New?",
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(64, 64, 64, 1)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10.2.w, left: 28.5.w),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: [
                          'assets/wn1.png',
                          'assets/wn2.png',
                          'assets/wn3.png'
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Image.asset('$i'),
                              );
                            },
                          );
                        }).toList(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20.w,
            )
          ],
        ),
        drawer: SafeArea(
          child: Container(
            width: 335.w,
            child: Drawer(
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
                      height: 22.w,
                      width: 22.w,
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
                      showDialog(
                          context: context,
                          builder: (context) {
                            Future.delayed(Duration(seconds: 2), () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KycForm()));
                            });
                            return AlertDialog(
                              title: Container(
                                height: 680.w,
                                width: 348.w,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 171.w),
                                      child: Image.asset(
                                        'assets/driverWelcome.png',
                                        height: 121.w,
                                        width: 240.w,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 89.w,
                                    ),
                                    Text(
                                      "Welcome to Ask Sewa\nProvider's Mode",
                                      style: TextStyle(
                                          fontSize: 25.w,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 27.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
                                        "You can add your business and provide services.",
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromRGBO(64, 64, 64, 1)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    leading: Image.asset(
                      'assets/pe2.png',
                      height: 20.w,
                      width: 20.w,
                    ),
                    horizontalTitleGap: 0.w,
                    title: Text(
                      'Switch to Provider',
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
}
