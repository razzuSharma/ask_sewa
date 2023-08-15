import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/chatbox.dart';
import 'package:rideon/tab_screen_provider.dart';

class InboxPageDriver extends StatefulWidget {
  const InboxPageDriver({Key? key}) : super(key: key);

  @override
  _InboxPageDriverState createState() => _InboxPageDriverState();
}

class _InboxPageDriverState extends State<InboxPageDriver> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        body: Column(
          children: [
            Container(
              height: 124.w,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1.w,
                          color: Color.fromRGBO(218, 218, 218, 1)))),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 49.w),
                      child: IconButton(
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
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 130.w, top: 60.w),
                    child: Text(
                      'Chats',
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
              height: 18.w,
            ),
            Container(
              height: 48.w,
              width: 353.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 14.w,
                      color: Color.fromRGBO(155, 155, 155, 1),
                      height: 1.w),
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, top: 10.w, right: 10.w),
                    child: Icon(
                      Icons.search,
                      size: 28.w,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 20.w, top: 15.w),
                ),
              ),
            ),
            SizedBox(
              height: 18.w,
            ),
            Container(
              height: 400.w,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ChatBox()));
                      },
                      leading: Image.asset(
                        'assets/a1.png',
                        height: 46.w,
                        width: 46.w,
                      ),
                      horizontalTitleGap: 10.w,
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          height: 16.w,
                          width: 16.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(239, 25, 25, 1),
                          ),
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.5.w,
                                fontSize: 11.w),
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yona Hime',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  'Sir just give me 5 more minutes',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                '2 min',
                                style: TextStyle(
                                    fontSize: 12.w,
                                    color: Color.fromRGBO(132, 132, 132, 1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.w,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/i2.png',
                        height: 46.w,
                        width: 46.w,
                      ),
                      horizontalTitleGap: 10.w,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maki Zenin',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(132, 132, 132, 1)),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  'Sure',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(132, 132, 132, 1)),
                                ),
                              ),
                              Text(
                                '5:30 pm',
                                style: TextStyle(
                                    fontSize: 12.w,
                                    color: Color.fromRGBO(132, 132, 132, 1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.w,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/i3.png',
                        height: 46.w,
                        width: 46.w,
                      ),
                      horizontalTitleGap: 10.w,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hange Zoe',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(132, 132, 132, 1)),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  'You: Okey :)',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(132, 132, 132, 1)),
                                ),
                              ),
                              Text(
                                '1d ago',
                                style: TextStyle(
                                    fontSize: 12.w,
                                    color: Color.fromRGBO(132, 132, 132, 1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.w,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/i4.png',
                        height: 46.w,
                        width: 46.w,
                      ),
                      horizontalTitleGap: 10.w,
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          height: 16.w,
                          width: 16.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(239, 25, 25, 1),
                          ),
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.5.w,
                                fontSize: 11.w),
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Levi Ackerman',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  "That's fine by me",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                '5d ago',
                                style: TextStyle(
                                    fontSize: 12.w,
                                    color: Color.fromRGBO(132, 132, 132, 1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.w,
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
