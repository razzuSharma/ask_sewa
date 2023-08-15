import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CitySelection extends StatefulWidget {
  const CitySelection({Key? key}) : super(key: key);

  @override
  _CitySelectionState createState() => _CitySelectionState();
}

class _CitySelectionState extends State<CitySelection> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: Column(
          children: [
            Container(
              height: 124.w,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3.w, color: Colors.grey))),
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
                    padding: EdgeInsets.only(left: 110.w, top: 55.w),
                    child: Text(
                      'Select City',
                      style: TextStyle(
                          fontSize: 18.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 64.w),
              child: Container(
                height: 48.w,
                color: Color.fromRGBO(243, 243, 243, 1),
                child: TextFormField(
                  style: TextStyle(fontSize: 18.w),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search City',
                    hintStyle: TextStyle(fontSize: 16.w),
                    contentPadding: EdgeInsets.only(
                      top: 9.w,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.w,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 11.w,
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Biratnagar",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Pokhara",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Kathmandu",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Dharan",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Birtamod",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Urlabari",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              contentPadding: EdgeInsets.only(left: 28.w),
              leading: Text(
                "Birgunj",
                style: TextStyle(fontSize: 17.w),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
