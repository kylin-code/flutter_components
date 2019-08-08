import 'package:flutter/material.dart';
import '../common/custome_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Center(
          child: MaterialButton(
            child: Text('点击'),
            onPressed: () {
              Navigator.of(context).push(CustomRoute(SecondPage()));
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text(
            'SecondPage',
          ),
          backgroundColor: Colors.pinkAccent,
        ));
  }
}
