import 'package:flutter/material.dart';
import './route/routers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '轻相册', theme: ThemeData.light(), home: BottomNavigationWidget());
  }
}
