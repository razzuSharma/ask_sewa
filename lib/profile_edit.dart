import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/delete_profile.dart';
import 'package:rideon/email.dart';

import 'city_selection.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  var _gendersVal;
  List _gender = ["Male", "Female", "Non-Binary"];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontFamily: "Biryani",
                          color: Colors.black,
                          fontSize: 17.w,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17.w,
                            fontFamily: "Biryani",
                            color: Color.fromRGBO(46, 204, 113, 1)),
                      ),
                    ),

                    // ProfileEdit PHOTO
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 34.w),
                child: Image.asset("assets/ProfileEdit.png",
                    width: 125.w, height: 120.w, fit: BoxFit.cover),
              ),
              // CHANGE ProfileEdit BUTTON
              TextButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.w))),
                            child: Container(
                              height: 231.w,
                              width: 370.w,
                              child: MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    ListTile(
                                      visualDensity: VisualDensity(
                                          horizontal: 0, vertical: -1),
                                      title: Center(
                                          child: Text(
                                        "Change Profile Photo",
                                        style: TextStyle(
                                          fontSize: 15.w,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      height: 0.1.w,
                                      color: Colors.black,
                                    ),
                                    ListTile(
                                      visualDensity: VisualDensity(
                                          horizontal: 0, vertical: -1),
                                      title: Center(
                                          child: Text(
                                        "Remove Current Photo",
                                        style: TextStyle(
                                          fontSize: 15.w,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      height: 0.1.w,
                                      color: Colors.black,
                                    ),
                                    ListTile(
                                      visualDensity: VisualDensity(
                                          horizontal: 0, vertical: -1),
                                      title: Center(
                                          child: Text(
                                        "Take Photo",
                                        style: TextStyle(
                                          fontSize: 15.w,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      height: 0.1.w,
                                      color: Colors.black,
                                    ),
                                    ListTile(
                                      visualDensity: VisualDensity(
                                          horizontal: 0, vertical: -1),
                                      title: Center(
                                          child: Text(
                                        "Choose from Library",
                                        style: TextStyle(
                                          fontSize: 15.w,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      height: 8.w,
                                      color:
                                          Colors.transparent.withOpacity(0.1),
                                    ),
                                    ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      visualDensity: VisualDensity(
                                          horizontal: 0, vertical: -1),
                                      title: Center(
                                          child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontSize: 15.w,
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.w),
                    child: Text("Change Profile Photo",
                        style: TextStyle(
                            fontFamily: "Biryani",
                            fontSize: 17.w,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(46, 204, 113, 1))),
                  )),

              Padding(
                padding: EdgeInsets.only(top: 34.w),
                child: Container(
                  height: 240.w,
                  width: 414.w,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            width: 0.5.w,
                            color: Color.fromRGBO(218, 218, 218, 1),
                          ),
                          bottom: BorderSide(
                              width: 0.5.w,
                              color: Color.fromRGBO(218, 218, 218, 1)))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.w),
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 17.w,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(left: 32.w),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  fontSize: 17.w, color: Colors.black),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Maki Zenin',
                                  hintStyle: TextStyle(
                                      fontSize: 17.w, color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 103.w, bottom: 3.w),
                          child: Divider(
                            height: 0.5.w,
                            color: Colors.grey,
                          ),
                        ),
                        ListTile(
                          horizontalTitleGap: 32.w,
                          title: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              items: _gender.map((value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              hint: Text(
                                'Gender',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.45),
                                    fontSize: 18.w),
                              ),
                              dropdownColor: Colors.white,
                              elevation: 3,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 36,
                              isExpanded: true,
                              value: _gendersVal,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.w),
                              onChanged: (value) {
                                setState(() {
                                  _gendersVal = value;
                                });
                              },
                            ),
                          ),
                          leading: Text(
                            'Gender',
                            style: TextStyle(
                              fontSize: 17.w,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 103.w, bottom: 3.w),
                          child: Divider(
                            height: 0.5.w,
                            color: Colors.grey,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CitySelection()),
                            );
                          },
                          leading: Text(
                            'City',
                            style: TextStyle(
                              fontSize: 17.w,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(left: 45.w),
                            child: Text(
                              'Biratnagar',
                              style: TextStyle(fontSize: 17.w),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 103.w, bottom: 3.w),
                          child: Divider(
                            height: 0.5.w,
                            color: Colors.grey,
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 17.w,
                            ),
                          ),
                          horizontalTitleGap: 45.w,
                          title: Text(
                            "yonahime@gmail.com",
                            style: TextStyle(
                                fontSize: 17.w,
                                color: Color.fromRGBO(0, 0, 0, 0.45)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18.w,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Email()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 150.w),
                child: Container(
                  color: Colors.white,
                  width: 414.w,
                  height: 48.w,
                  child: MaterialButton(
                    autofocus: true,
                    textColor: Color.fromRGBO(216, 67, 21, 1),
                    child: Text(
                      "Delete Account",
                      style: TextStyle(
                          fontSize: 17.w, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeleteProfile()));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
