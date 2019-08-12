import 'package:flutter/material.dart';
import '../common/custome_router.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('我的'),
        )),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(CustomRoute(SecondPage()));
                },
                child: Text('详 情', style: TextStyle(fontSize: 20)),
              ),
            ],
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
