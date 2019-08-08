import 'package:flutter/material.dart';
import '../pages/home_screen.dart';
import '../pages/email_screen.dart';
import '../pages/pages_screen.dart';
import '../pages/user_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  final _BottomNavigationColorRed = Colors.red;
  int _currentIndex = 0;
  List<Widget> navList = List();

  @override
  void initState() {
    navList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(UserScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0
                      ? _BottomNavigationColorRed
                      : _BottomNavigationColor,
                ),
                title: Text('首页',
                    style: TextStyle(
                      color: _currentIndex == 0
                          ? _BottomNavigationColorRed
                          : _BottomNavigationColor,
                    ))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _currentIndex == 1
                      ? _BottomNavigationColorRed
                      : _BottomNavigationColor,
                ),
                title: Text('Email',
                    style: TextStyle(
                        color: _currentIndex == 1
                            ? _BottomNavigationColorRed
                            : _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _currentIndex == 2
                      ? _BottomNavigationColorRed
                      : _BottomNavigationColor,
                ),
                title: Text('Pages',
                    style: TextStyle(
                        color: _currentIndex == 2
                            ? _BottomNavigationColorRed
                            : _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: _currentIndex == 3
                      ? _BottomNavigationColorRed
                      : _BottomNavigationColor,
                ),
                title: Text('我的',
                    style: TextStyle(
                        color: _currentIndex == 3
                            ? _BottomNavigationColorRed
                            : _BottomNavigationColor))),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
