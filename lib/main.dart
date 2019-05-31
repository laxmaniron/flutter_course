import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/mi6.png'),
              Text('Ready for a mission')
            ],
          ),
        ),
      ),
    );
  }
}
