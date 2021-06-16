import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  var product_list = [
    {
      "name": "Banana",
      "picture": "images/fruits/banana.jpg",
    },
    {
      "name": "Cocoa",
      "picture": "images/fruits/cocoa 3.jpg",
    },
    {
      "name": "Coconut",
      "picture": "images/fruits/coconut.jpg",
    },
    {
      "name": "Guava",
      "picture": "images/fruits/guava.jpg",
    },
    {
      "name": "Lemon",
      "picture": "images/fruits/lemon.jpg",
    },
    {
      "name": "Lime",
      "picture": "images/fruits/lime.jpg",
    },
    {
      "name": "Orange",
      "picture": "images/fruits/orange.jpg",
    },
    {
      "name": "Pear",
      "picture": "images/fruits/pear.jpg",
    },
    {
      "name": "Soursop",
      "picture": "images/fruits/soursop.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              // prod_old_price: product_list[index]['old_price'],
              // prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;


  Single_prod({
    this.prod_name,
    this.prod_picture,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(prod_name, style: TextStyle(color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  }
}
