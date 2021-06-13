import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/category_details.dart';

  class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_image: 'images/cat1.png',
            image_caption: 'Vegetable',
          ),
          Category(
            image_image: 'images/cat2.png',
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
    child: InkWell(onTap:() => Navigator.of(context).push(new MaterialPageRoute(
        builder: (context) => new CategoriesDetails(),
    ),),
    child: Container(
    width: 80.0,
    child: ListTile(
      title: Image.asset(image_image,
        width: 40.0,
        height: 40.0,),
      subtitle: Text(image_caption),
    ),
    ),
    ),
    );
}
}
