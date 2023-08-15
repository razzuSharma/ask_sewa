import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/tab_screen_provider.dart';

class KycForm extends StatefulWidget {
  const KycForm({Key? key}) : super(key: key);

  @override
  _KycFormState createState() => _KycFormState();
}

class _KycFormState extends State<KycForm> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  void _toggleTab() {
    _tabIndex = _tabController.index + 1;
    _tabController.animateTo(_tabIndex);
  }

  final _formKey = GlobalKey<FormState>();
  var focusTextField = false;

  final fullNameController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final fatherNameController = TextEditingController();
  final motherNameController = TextEditingController();
  final grandFatherController = TextEditingController();
  final ocupationController = TextEditingController();
  final emailController = TextEditingController();
  final citizenshipNumberController = TextEditingController();
  final citizenshipIssueDateController = TextEditingController();
  final citizenshipIssueDistrictController = TextEditingController();

  var _gendersVal;
  List _gender = ["Male", "Female", "Non-Binary"];

  var _occupation;
  List _occu = [
    "Student",
    "Doctor",
    "Teacher",
    "Police",
    "Businessman",
    "Engineer",
    "Other"
  ];

  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color.fromRGBO(240, 240, 240, 1),
            appBar: AppBar(
              title: Text(
                'KYC Verification',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.w,
                    fontWeight: FontWeight.w900),
              ),
              centerTitle: true,
              toolbarHeight: 80.w,
              leading: ModalRoute.of(context)?.canPop == true
                  ? Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30.w,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  : null,
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(
                color: Colors.black,
                //change your color here
              ),
              backgroundColor: Color.fromRGBO(240, 240, 240, 1),
              bottom: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Color.fromRGBO(46, 204, 113, 0.1),
                ),
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.green.shade500,
                      size: 25.w,
                    ),
                    child: Text("Personal",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.copy,
                      color: Colors.green.shade500,
                      size: 25.w,
                    ),
                    child: Text("Document",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ListView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 34.w, left: 17.w),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: 46.w,
                            width: 380.w,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                "Personal Information",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Color.fromRGBO(46, 204, 113, 1)),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Full Name:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: fullNameController,
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '*Please enter Full name';
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "DOB:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: InkWell(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1980),
                                lastDate: DateTime(2022),
                              ).then((date) {
                                setState(() {
                                  _dateTime = date;
                                });
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.w),
                                color: Colors.white,
                              ),
                              height: 53.w,
                              width: 380.w,
                              child: Padding(
                                padding: EdgeInsets.only(top: 12.w, left: 10.w),
                                child: Text(
                                  _dateTime == null
                                      ? 'Pick a Date'
                                      : _dateTime.toString(),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16.w, color: Colors.grey),
                                ),
                              ),
                            )),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Gender:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.w,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.w),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            height: 60.w,
                            width: 380.w,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  items: _gender.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text('I am . . .'),
                                  dropdownColor: Colors.white,
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
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 40.w, left: 17.w),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: 46.w,
                            width: 380.w,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                "Address Details",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Color.fromRGBO(46, 204, 113, 1)),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Current Address",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: currentAddressController,

                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '* Please enter your current address';
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              // onSaved: ( value) {
                              //   _fname = value;
                              // },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Permanent Address",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: permanentAddressController,

                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '* Please enter your permanent address';
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              // onSaved: ( value) {
                              //   _fname = value;
                              // },
                            ),
                          ),
                        ),
                      ),

                      // ignore: deprecated_member_use

                      Padding(
                        padding: EdgeInsets.only(top: 40.w, left: 17.w),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: 46.w,
                            width: 380.w,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                "Family Information",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Color.fromRGBO(46, 204, 113, 1)),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Father's Name:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: fatherNameController,

                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '* Please enter father name';
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              // onSaved: ( value) {
                              //   _fname = value;
                              // },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Mother's Name:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: motherNameController,

                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "* Please enter Mother's name";
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),

                              // onSaved: ( value) {
                              //   _mname = value;
                              // },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Grand Father's Name:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: grandFatherController,

                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '* Please enter Grand Father name';
                                }
                                return null;
                              },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),

                              // onSaved: ( value) {
                              //   _grandfname = value;
                              // },
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 40.w, left: 17.w, right: 17.w),
                          alignment: Alignment.centerLeft,
                          height: 46.w,
                          width: 380.w,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Text(
                              "Other Information",
                              style: TextStyle(
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.w,
                                  color: Color.fromRGBO(46, 204, 113, 1)),
                            ),
                          )),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Occupation:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                items: _occu.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                dropdownColor: Colors.white,
                                elevation: 3,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                isExpanded: true,
                                value: _occupation,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.w),
                                onChanged: (value) {
                                  setState(() {
                                    _occupation = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          // alignment: Alignment.center,
                          height: 53.w,
                          // width: 380.w,
                          // child: TextFormField(
                          //   style: TextStyle(fontSize: 16.w),
                          //   decoration: InputDecoration(
                          //     fillColor: Colors.white,
                          //     border: InputBorder.none,
                          //   ),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Email Address:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          // height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: emailController,

                              textInputAction: TextInputAction.done,
                              autofocus: focusTextField,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your email";
                                }
                                if (!value.endsWith('@gmail.com') &&
                                    !value.endsWith('@yahoo.com')) {
                                  return "Enter a valid email address.";
                                }
                                return null;
                              },
                              // onSaved: ( value) {
                              //   _email = value;
                              // },
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Optional",
                                  hintStyle: TextStyle(fontSize: 16.w)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        // onTap: _toggleTab,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _toggleTab();

                            print(fullNameController.text);
                            print(dobController.text);
                            print(genderController.text);
                            print(currentAddressController.text);
                            print(permanentAddressController.text);
                            print(fatherNameController.text);
                            print(motherNameController.text);
                            print(grandFatherController.text);
                            print(ocupationController.text);

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                'Please wait...',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              )),
                            );
                          } else {
                            print('Not Validated');
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 30.w, left: 325.w, right: 20.w),
                          alignment: Alignment.center,
                          height: 37.w,
                          width: 63.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(5.w),
                          ),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                height: 2.w,
                                fontSize: 18.w,
                                color: Color.fromRGBO(46, 204, 113, 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.w,
                      )
                    ]),

                // Documents Required

                ListView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 34.w, left: 17.w),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: 46.w,
                            width: 380.w,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                "Documents Details",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Color.fromRGBO(46, 204, 113, 1)),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Citizenship Number:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: citizenshipNumberController,
                              textInputAction: TextInputAction.next,
                              enableInteractiveSelection: true,
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter citizenship number';
                                }
                                return null;
                              },
                              // onSaved: ( value) {
                              //   _citizennumber = value;
                              // }
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Citizenship Issued Date:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: citizenshipIssueDateController,
                              textInputAction: TextInputAction.next,
                              enableInteractiveSelection: true,
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter origin';
                                }
                                return null;
                              },
                              // onSaved: ( value) {
                              //   _origin = value;
                              // }
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, top: 20.w, bottom: 20.w),
                        child: Text(
                          "Citizenship Issued District:",
                          style: TextStyle(
                            fontSize: 16.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 53.w,
                          width: 380.w,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextFormField(
                              controller: citizenshipIssueDistrictController,
                              textInputAction: TextInputAction.next,
                              enableInteractiveSelection: true,
                              style: TextStyle(fontSize: 16.w),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter issue district';
                                }
                                return null;
                              },
                              // onSaved: ( value) {
                              //   _origin = value;
                              // }
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.w, vertical: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Citizenship front:",
                                    style: TextStyle(
                                      fontSize: 16.w,
                                    ),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.w),
                                        color: Colors.white,
                                      ),
                                      alignment: Alignment.center,
                                      height: 180.w,
                                      width: 180.w,
                                      child: Icon(Icons.add_a_photo)),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Citizenship back:",
                                    style: TextStyle(
                                      fontSize: 16.w,
                                    ),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.w),
                                        color: Colors.white,
                                      ),
                                      alignment: Alignment.center,
                                      height: 180.w,
                                      width: 180.w,
                                      child: Icon(Icons.add_a_photo)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 34.w, left: 17.w, right: 14.w),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: 46.w,
                            width: 380.w,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                "Business Documentation",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Color.fromRGBO(46, 204, 113, 1)),
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.w),
                          child: Container(
                            height: 44.w,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.w),
                              child: Text(
                                "                          + Add File",
                                style: TextStyle(
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.w,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (!_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TapsScreenProvider()));
                          }

                          //Send to API
                        },
                        child: Container(
                          height: 41.w,
                          margin: EdgeInsets.only(
                              top: 41.w, left: 325.w, right: 20.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(5.w),
                          ),
                          child: Text(
                            "Next",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 2.w,
                                fontSize: 18.w,
                                color: Color.fromRGBO(46, 204, 113, 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55.w,
                      )
                    ]),

                // Vehicle Details
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  DateFormat(String s) {}
}
