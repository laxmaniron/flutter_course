import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Mission Impossible 6'];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Container(
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
    Products(_products)
    ],);
  }
}
