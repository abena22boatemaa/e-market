import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exotic extends StatefulWidget {
  @override
  _ExoticState createState() => _ExoticState();
}

class _ExoticState extends State<Exotic> {
  var product_list = [
    {
      "name": "Beetroot",
      "picture": "images/exotic/beetroot.jpg",
    },
    {
      "name": "Broccoli",
      "picture": "images/exotic/Broccoli.jpg",
    },
    {
      "name": "Cauliflower",
      "picture": "images/exotic/Cauliflower.png",
    },
    {
      "name": "Grapes",
      "picture": "images/exotic/Grapes.jpg",
    },
    {
      "name": "Strawberries",
      "picture": "images/exotic/images.jpg",
    },
    {
      "name": "Kiwi",
      "picture": "images/exotic/kiwi-large.jpg",
    },
    {
      "name": "Peas",
      "picture": "images/exotic/peas.jpg",
    },
    {
      "name": "Squash",
      "picture": "images/exotic/squash.png",
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
