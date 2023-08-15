import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveAddress extends StatefulWidget {
  const SaveAddress({Key? key}) : super(key: key);

  @override
  _SaveAddressState createState() => _SaveAddressState();
}

class _SaveAddressState extends State<SaveAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Column(
        children: [
          Container(
            height: 124.w,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.w, color: Color.fromRGBO(218, 218, 218, 1)))),
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
                  padding: EdgeInsets.only(left: 100.w, top: 60.w),
                  child: Text(
                    'Saved Address',
                    style: TextStyle(
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.w, left: 21.w, right: 20.w),
            child: Container(
              height: 155.w,
              width: 373.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 160.w, top: 9.w),
                    child: Text(
                      "Current Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18.w),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.5.w),
                    child: Container(
                      height: 0.1.w,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.w, left: 8.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 25.w,
                          color: Color.fromRGBO(46, 204, 113, 1),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "Dan Bahadur Adhikari",
                          style: TextStyle(
                              height: 2.5.w,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 109.7.w),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {},
                            child: Icon(Icons.edit_outlined,
                                color: Color.fromRGBO(46, 204, 113, 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 195.w),
                    child: Text(
                      "+9779862202603",
                      style: TextStyle(fontSize: 14.w),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: Row(
                      children: [
                        Text(
                          "Biratnagar-10, traffic chowk",
                          style: TextStyle(fontSize: 14.w),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 170.w),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use_from_same_package
                primary: Color.fromRGBO(46, 204, 113, 1),
              ),
              child: Row(
                children: [
                  Icon(Icons.add, color: Colors.white),
                  SizedBox(width: 8.w),
                  Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 0.05.w,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(top: 45.w),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(163, 232, 192, 0.78),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(120.r))),
              height: 313.w,
              width: 416.w,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 28.w, right: 30.w, top: 42.w),
                    child: Card(
                      color: Color.fromRGBO(252, 252, 254, 0.89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                          leading: Padding(
                            padding: EdgeInsets.only(top: 2.w),
                            child: Image.asset(
                              'assets/carservice.png',
                              height: 25.w,
                              width: 25.w,
                            ),
                          ),
                          title: Text(
                            'Car service',
                            style: TextStyle(fontSize: 18.w),
                          ),
                          subtitle: Text(
                            'Bargachhi, Biratnagar-07',
                          ),
                          trailing: Icon(Icons.edit_outlined,
                              size: 20.w,
                              color: Color.fromRGBO(46, 204, 113, 1))),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 28.w, right: 30.w, top: 14.w),
                    child: Card(
                      color: Color.fromRGBO(252, 252, 254, 0.89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 2.w),
                          child: Icon(Icons.home,
                              size: 30.w,
                              color: Color.fromRGBO(46, 204, 113, 1)),
                        ),
                        title: Text(
                          'Pick up kids',
                          style: TextStyle(fontSize: 18.w),
                        ),
                        subtitle: Text(
                          'Bijuli office, Biratnagar-6',
                        ),
                        trailing: Icon(Icons.edit_outlined,
                            size: 20.w, color: Color.fromRGBO(46, 204, 113, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 28.w, right: 30.w, top: 14.w),
                    child: Card(
                      color: Color.fromRGBO(252, 252, 254, 0.89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                          leading: Padding(
                            padding: EdgeInsets.only(top: 5.w),
                            child: Icon(Icons.local_hospital,
                                size: 27.w,
                                color: Color.fromRGBO(46, 204, 113, 1)),
                          ),
                          title: Text(
                            'Hospital',
                            style: TextStyle(fontSize: 18.w),
                          ),
                          subtitle: Text(
                            'Hospital chowk,Biratnagar-8',
                          ),
                          trailing: Icon(Icons.edit_outlined,
                              size: 20.w,
                              color: Color.fromRGBO(46, 204, 113, 1))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  FlatButton({required Null Function() onPressed, required Icon child}) {}
}
