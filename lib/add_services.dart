import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddServices extends StatefulWidget {
  const AddServices({Key? key}) : super(key: key);

  @override
  State<AddServices> createState() => _AddServicesState();
}

class _AddServicesState extends State<AddServices> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.w),
          child: AppBar(
            elevation: 0.5.w,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              height: 150.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 240, 240, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.w),
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
                          padding: EdgeInsets.only(left: 90.w, top: 60.w),
                          child: SizedBox(
                            child: Text(
                              'Add Services',
                              style: TextStyle(
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                "Title",
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Container(
                height: 38.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  enableInteractiveSelection: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.w),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter title of service';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text(
                "Provider Name",
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Container(
                height: 38.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  enableInteractiveSelection: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.w),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter service provider name';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                "Location",
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Container(
                height: 38.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  enableInteractiveSelection: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.w),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your business location';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                "Category",
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Container(
                height: 38.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  enableInteractiveSelection: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.w),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter the category of your service.';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Container(
                height: 38.w,
                color: Color.fromRGBO(237, 237, 237, 1),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  enableInteractiveSelection: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.w),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.25), width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Add description of the service';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 80.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: MaterialButton(
                autofocus: true,
                height: 51.w,
                minWidth: 339.w,
                color: Color.fromRGBO(46, 204, 113, 1),
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
