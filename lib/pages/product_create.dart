import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductCreatePage extends StatefulWidget {

  final Function addProduct;

  ProductCreatePage(this.addProduct); 

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Product Description'),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),
          // Text(titleValue)
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Save'),
            color:Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: (){
              final Map<String,dynamic>  product ={
                'title':titleValue,
                'description': descriptionValue,
                'price':priceValue,
                'image':'assets/mi6.png'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/products');
            },
          )
        ],
      ),
    );
  }
}
