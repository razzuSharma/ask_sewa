import 'package:flutter/material.dart';
import 'package:rideon/final_screen.dart';
import 'package:rideon/history.dart';
import 'package:rideon/inbox.dart';
import 'package:rideon/setting_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TapsScreen extends StatefulWidget {
  const TapsScreen({Key? key}) : super(key: key);

  @override
  _TapsScreenState createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  final List<Widget> _pages = [
    FinalScreen(),
    InboxPage(),
    HistoryPage(),
    SettingPage(),
  ];

  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: SizedBox(
          height: 85.w,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: _selectedPage,
            selectedItemColor: Color.fromRGBO(46, 204, 113, 1),
            unselectedItemColor: Colors.grey[600],
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                // ignore: deprecated_member_use
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  size: 30,
                ),
                // ignore: deprecated_member_use
                label: 'INBOX',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  size: 30,
                ),
                // ignore: deprecated_member_use
                label: 'HISTORY',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),

                // ignore: deprecated_member_use
                label: 'SETTINGS',
              ),
            ],
          ),
        ));
  }
}
