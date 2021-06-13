import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var Product_on_the_cart=[
  {
  "name": "Apple",
  "picture": "images/recent products/apple.jpg",
  "price": 2.0,
  "size": "m",
  "color": "Green",
  "quantity": 1,
  },
  {
  "name": "Tomato",
  "picture": "images/recent products/tomato.png",
  "price": 5.0,
  "size": "m",
  "color": "Red",
  "quantity": 1,
  },
    {
      "name": "Apple",
      "picture": "images/recent products/apple.jpg",
      "price": 2.0,
      "size": "m",
      "color": "Green",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context,index){
          return Single_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_color: Product_on_the_cart[index]["color"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
            cart_prod_price: Product_on_the_cart[index]["price"],
            cart_prod_qty: Product_on_the_cart[index]["quantity"],
            cart_prod_size: Product_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //********LEADING SECTION
        leading: new Image.asset(cart_prod_picture,
          width: 100.0,
          height: 100.0,),
        //******TITLE SECTION
        title: new Text(cart_prod_name),
        //*****SUBTITLE SECTION
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                // *********PRODUCTS SIZE
               Padding(
                 padding: const EdgeInsets.all(0.0),
                 child: new Text("Size"),
               ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),
                // ***********PRODUCT COLOR
               new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0) ,
                child: new Text("Color"),),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.red),),
                ),
                 ],
            ),

            //*******PRODUCT PRICE
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.red),),
            ),
          ],
        ),

        ),
      );
  }
}

