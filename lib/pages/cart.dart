import 'package:flutter/material.dart';
import'package:flutter_app/Elements/cart_product.dart';
import 'package:flutter_app/providers/cartProvider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
          appBar: new AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blue,
      title: Text('Shopping cart'),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.search, color: Colors.white,),
            onPressed: () {}),
      ],
    ),
      body: new Cart_product(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total"),
              subtitle: new Text("GHS ${cart.totalAmount}", style: TextStyle(color: Colors.red),),
            )),

            Expanded(
              child: new MaterialButton(onPressed: (){},
    child: new Text("Check out", style: TextStyle(color: Colors.white),),
    color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
