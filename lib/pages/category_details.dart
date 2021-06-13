import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CategoriesDetails extends StatefulWidget {
  @override
  _CategoriesDetailsState createState() => _CategoriesDetailsState();
}

class _CategoriesDetailsState extends State<CategoriesDetails> {
  @override
  Widget build(BuildContext context) {
   Widget image_carrousel= new Container(
     height: 200.0,
     child: new Carousel(
       boxFit: BoxFit.cover,
       images: [
         AssetImage('images/carousel/CS1.jpg')
       ],
       dotSize: 0.0,
       indicatorBgPadding: 2.0,
       dotBgColor: Colors.transparent,
     ),
   );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('E-Market'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.favorite_border, color: Colors.white,),
              onPressed: () {}),
          new IconButton(icon: Icon(Icons.add_shopping_cart,
            color: Colors.white,),
              onPressed: () {})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          image_carrousel,

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Search'),
              leading: Icon(Icons.search_outlined, color: Colors.black,),
            ),
          ),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Fruits Available......', style: TextStyle(color:Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16.0),),),

        ],
      ),
    );

  }
}
