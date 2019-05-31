import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
     
     @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Mission Impossible 6'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {

                  setState(() {
                      _products.add('Avatar');
                  
    
                  });
                                },
                child: Text("Add Product"),
              ),
            ),
            
       
          ],
        ),
      ),
    );
  }
}
