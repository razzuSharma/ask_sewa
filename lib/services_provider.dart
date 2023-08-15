import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/add_services.dart';
import 'package:rideon/tab_screen_provider.dart';

class ServicesPageProvider extends StatefulWidget {
  const ServicesPageProvider({Key? key}) : super(key: key);

  @override
  _ServicesPageProviderState createState() => _ServicesPageProviderState();
}

class _ServicesPageProviderState extends State<ServicesPageProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(58.w),
          child: AppBar(
              elevation: 0.5.w,
              backgroundColor: Color.fromRGBO(240, 240, 240, 1),
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 67.w),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TapsScreenProvider()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.w,
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Text(
                      'Our Services',
                      style: TextStyle(
                          height: 2.w,
                          fontSize: 18.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              ))),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 200.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "Service No. 1",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat eros vel dolor suscipit, viverra consectetur tellus molestie. Nullam quis interdum augue. Aenean ornare hendrerit egestas. Curabitur posuere nisl ac purus commodo, vel fermentum dui.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 200.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "Service No. 2",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat eros vel dolor suscipit, viverra consectetur tellus molestie. Nullam quis interdum augue. Aenean ornare hendrerit egestas. Curabitur posuere nisl ac purus commodo, vel fermentum dui.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 200.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "Service No. 3",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat eros vel dolor suscipit, viverra consectetur tellus molestie. Nullam quis interdum augue. Aenean ornare hendrerit egestas. Curabitur posuere nisl ac purus commodo, vel fermentum dui.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 200.w,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      "Service No. 4",
                      style: TextStyle(fontSize: 20.w, color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat eros vel dolor suscipit, viverra consectetur tellus molestie. Nullam quis interdum augue. Aenean ornare hendrerit egestas. Curabitur posuere nisl ac purus commodo, vel fermentum dui.",
                        style: TextStyle(fontSize: 12.w),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            MaterialButton(
              height: 51.w,
              minWidth: 334.w,
              color: Color.fromRGBO(46, 204, 113, 1),
              textColor: Color.fromRGBO(255, 255, 255, 1),
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
            SizedBox(
              height: 20.w,
            )
          ],
        )
      ]),
    );
  }
}
