import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideon/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ask Sewa',
        theme: ThemeData(
          fontFamily: 'Biryani',
          appBarTheme: AppBarTheme(
            elevation: 0,
          ),
        ),
        home: SplashScreen(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
