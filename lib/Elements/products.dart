import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Apple",
      "picture": "images/recent products/apple.jpg",
      "old_price": 3.5,
      "price": 2.0,
    },
    {
      "name": "Pineapple",
      "picture": "images/recent products/pineapple.png",
      "old_price": 9.0,
      "price": 6.0,
    },
    {
      "name": "Tomato",
      "picture": "images/recent products/tomato.png",
      "old_price": 5.0,
      "price": 3.5,
    },
    {
      "name": "Cabbage",
      "picture": "images/recent products/cabbage.png",
      "old_price": 5.0,
      "price": 4.0,
    },
    {
      "name": "Pawpaw",
      "picture": "images/recent products/pawpaw.jpg",
      "old_price": 5.0,
      "price": 2.0,
    },
    {
      "name": "Mango",
      "picture": "images/recent products/mango.jpg",
      "old_price": 5.0,
      "price": 3.0,
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
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              // passing the values of the product to product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_Picture: prod_picture,
                ))),
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

                    new Text("\$${prod_price}", style: TextStyle(color:Colors.red,
                        fontWeight: FontWeight.bold,
                       fontSize: 16.0),)
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
      ),
    );
  }
}
