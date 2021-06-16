import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/categories_details.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_image: 'images/catv.png',
            image_caption: 'Vegetable',
          ),
          Category(
            image_image: 'images/catf.png',
            image_caption: 'Fruit',
          ),
        ],
      ),
    );
  }
}



class Category extends StatelessWidget {
  final String image_image;
  final String image_caption;


  Category({
    this.image_image,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder:
              (context) => new CategoryDetails()));
        },
    child: Container(
    width: 200.0,
    child: ListTile(
      title: Image.asset(image_image,
        width: 130.0,
        height: 100.0,),
      subtitle: Text(image_caption, style:
      TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18.0, color: Colors.black54),
    ),
    ),
    ),
    ),
    );
}
}
