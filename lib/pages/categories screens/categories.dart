import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/pages/categories%20screens/bike.dart';
import 'package:rideon/pages/categories%20screens/car.dart';
import 'package:rideon/pages/categories%20screens/courier.dart';
import 'package:rideon/pages/categories%20screens/education.dart';
import 'package:rideon/pages/categories%20screens/food.dart';
import 'package:rideon/pages/categories%20screens/gym.dart';
import 'package:rideon/pages/categories%20screens/handyman.dart';
import 'package:rideon/pages/categories%20screens/institute.dart';
import 'package:rideon/pages/categories%20screens/laptop.dart';
import 'package:rideon/pages/categories%20screens/mobile.dart';
import 'package:rideon/pages/categories%20screens/park.dart';
import 'package:rideon/pages/categories%20screens/parlour.dart';
import 'package:rideon/pages/categories%20screens/plumber.dart';
import 'package:rideon/pages/categories%20screens/shopping.dart';
import 'package:rideon/pages/categories%20screens/tenthouse.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.w),
        child: AppBar(
          elevation: 0.5.w,
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          automaticallyImplyLeading: false, // hides leading widget
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 57.w),
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
                  width: 110.w,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      height: 2.w,
                      fontSize: 18.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FoodPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/food.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('FOOD')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ParkPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/park.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('PARK')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GymPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/gym.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('GYM')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourierPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/courier.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('COURIER')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TentHousePage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/tent.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('TENT HOUSE')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlumberPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/plumber.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('PLUMBER')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MobilePage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/mobile.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('MOBILE')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LaptopPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/laptop.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('LAPTOP')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/shopping.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('SHOPPING')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EducationPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/education.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('EDUCATION')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InstitutePage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/institute.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('INSTITUTE')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HandymanPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/handyman.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('HANDY MAN')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BikePage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/bike.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('BIKE')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CarPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/car.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('CAR')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ParlourPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/parlour.png'),
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(15.w)),
                      ),
                      Text('PARLOUR')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
