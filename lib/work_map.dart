import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/googlemap.dart';

class WorkDestination extends StatelessWidget {
  const WorkDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 30.w),
            ),

            // icon: (Icons.arrow_back,
            //   size: 30.w,
            //   color: Colors.black,),),

            toolbarHeight: 75.w,
            title: Text(
              'Set Work Address',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.w,
                  fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(240, 240, 240, 1),
            shape:
                Border(bottom: BorderSide(width: 0.1.w, color: Colors.black))),
        body: Column(
          children: [
            SizedBox(
              height: 13.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.w),
                    border: Border.all(
                        width: 1.w, color: Color.fromRGBO(0, 0, 0, 0.25))),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.work, color: Colors.black),
                      hintText: 'Set Work Address',
                      hintStyle: TextStyle(
                          height: 1.2.w,
                          fontSize: 14.w,
                          color: Color.fromRGBO(0, 0, 0, 0.25))),
                ),
              ),
            ),
            SizedBox(height: 14.w),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GoogleMapScreen()));
              },
              child: Container(
                height: 46.w,
                width: 376.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12.w,
                    ),
                    Image.asset(
                      'assets/location_man.png',
                      height: 20.w,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Set On Map",
                      style: TextStyle(fontSize: 14.w),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
