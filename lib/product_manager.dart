import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct});

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
      if (widget.startingProduct != null){
          _products.add(widget.startingProduct);
      }
    
  
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Product Manager State] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
     setState(() {
            _products.add(product);
          });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Container(
      margin: EdgeInsets.all(10.0),
      child: ProductControl(_addProduct),
    ),
    Expanded( child:Products(_products))
    ],);
  }
}
