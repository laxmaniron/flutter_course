import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index){
    return Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/mi6.png'),
                      Text(products[index]),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: Text('Details'),
                            onPressed: () => {},
                          )
                        ],
                      )
                    ],
                  ),
                );
  }

  Widget _buildProductList(){

    Widget productCards;

    if(products.length>0){
      productCards= ListView.builder(
         itemBuilder: _buildProductItem,
         itemCount: products.length,
    );
    }
    else {
      // productCards = Container();
      productCards = Center(
      child: Text("No Products found, please add some"),
      );
    }  

    return productCards;

  }

  @override
  Widget build(BuildContext context) {

    return _buildProductList();
  }
}
