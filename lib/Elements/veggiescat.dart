import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Veggies extends StatefulWidget {
  @override
  _VeggiesState createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  var product_list = [
    {
      "name": "Carrot",
      "picture": "images/vegetables/carrots.jpg",
    },
    {
      "name": "Cucumber",
      "picture": "images/vegetables/cucumber.jpg",
    },
    {
      "name": "Garlic",
      "picture": "images/vegetables/garlic.png",
    },
    {
      "name": "Ginger",
      "picture": "images/vegetables/Ginger.png",
    },
    {
      "name": "Lettuce",
      "picture": "images/vegetables/lettuce.jpg",
    },
    {
      "name": "Peppers",
      "picture": "images/vegetables/Peppers.jpg",
    },
    {
      "name": "Red Onion",
      "picture": "images/vegetables/Red_Onion.jpg",
    },
    {
      "name": "Spring Onion",
      "picture": "images/vegetables/spring-onions.jpg",
    },
    {
      "name": "Yellow Onion",
      "picture": "images/vegetables/yellow onion.jpg",
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