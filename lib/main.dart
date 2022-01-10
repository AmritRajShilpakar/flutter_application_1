import 'package:flutter/material.dart';
import 'package:flutter_application_1/products_manager.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red, 
        brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager(startingProduct: 'Food Tester')
      ),
    );
  }
}
