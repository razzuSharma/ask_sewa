import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
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
                    width: 130.w,
                  ),
                  Text(
                    'Education',
                    style: TextStyle(
                        height: 2.w,
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 250.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    height: 130.w,
                    width: 250.w,
                    child: Text('Image'),
                  ),
                  Text(
                    'Title',
                    style:
                        TextStyle(fontSize: 20.w, fontWeight: FontWeight.w600),
                  ),
                  Text('Store Name'),
                  Text('Ratings')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 250.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    height: 130.w,
                    width: 250.w,
                    child: Text('Image'),
                  ),
                  Text(
                    'Title',
                    style:
                        TextStyle(fontSize: 20.w, fontWeight: FontWeight.w600),
                  ),
                  Text('Store Name'),
                  Text('Ratings')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 250.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    height: 130.w,
                    width: 250.w,
                    child: Text('Image'),
                  ),
                  Text(
                    'Title',
                    style:
                        TextStyle(fontSize: 20.w, fontWeight: FontWeight.w600),
                  ),
                  Text('Store Name'),
                  Text('Ratings')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
