import 'package:flutter/material.dart';

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
                onPressed: () {},
                child: Text('详 情', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ));
  }
}
