import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
      super.initState();
    _products.add(widget.startingProduct);
  
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Product Manager State] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

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