import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({required this.startingProduct});// curly bracket = targeted parameter

  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  
  List<String> _products = [];

  @override
  void initState() {// inintState runs before build runs
    _products.add(widget.startingProduct); //widget = ProductManager. can use widget. only in methods
    super.initState();
  }

  void _addProduct(String product){
    setState(() {// setState reruns build when inner state changes i.e. inner properties
      _products.add(product);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Container(
        margin: EdgeInsets.all(10.0), 
        child: ProductControl(_addProduct)
      ),
      Expanded(
        child: SizedBox(
          height: 200,
          child: Products(_products)
        )
      )
    ]);
  }
}