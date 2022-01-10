import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) ;

  @override
  Widget build(BuildContext context) {
    /*WITH MAP
    return Column(children: 
      products.map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/signature.png'),
            Text(element),
          ],
        )
      )).toList() 
    );
    */
    
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: products.length,
      itemBuilder: (BuildContext context, i){
          return Column(
            children: [
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/signature.png'),
                    Text(products[i]),
                  ],
                )
              ) 
            ]
          );
      }
    );
  }
}