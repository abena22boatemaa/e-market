import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('E-Market'),
          actions: <Widget>[
        new IconButton(icon: Icon(Icons.shopping_basket, color: Colors.white,),
    ),
       ] ,
    ),
    );
  }
}
