import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
          onPressed: (){
            addProduct('Guitar');
          }, 
          child: Text('Add Product'), 
        ); 
  }
}