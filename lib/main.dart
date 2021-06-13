import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/Elements/horizontal_listview.dart';
import 'package:flutter_app/Elements/products.dart';
import 'package:flutter_app/pages/cart.dart';


void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
    );
  }
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 200.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/carousel/CS1.jpg'),
            AssetImage('images/carousel/CS2.png'),
            AssetImage('images/carousel/CS3.png'),
            AssetImage('images/carousel/CS4.jpg'),
            AssetImage('images/carousel/CS5.jpg'),
            AssetImage('images/carousel/CS6.jpg'),
          ],
          autoplay: false,
          //animationCurve: Curves.fastOutSlowIn,
          //animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
        )

    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('E-Market'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => new Cart()));
              })
        ],
      ),

// Drawer_Header
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Victoria Appiah', style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
              accountEmail: Text('abena22boatemaa@gmail.com', style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.blue
              ),
            ),

            // Drawer_Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.add_shopping_cart,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('favourites', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.settings,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.help),
              ),

            ),
          ],
        ),
      ),

      body: new Column(
          children: <Widget>[
            image_carousel,
            // padding widget for the categories
            new Padding(padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,
                      color: Colors.black54),),),),
            // items under categories begins here(horizontal list)
            HorizontalList(),

            // padding widget for the categories
            new Padding(padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                child: new Text('Recent products', style:
                TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18.0, color: Colors.black54),),),),

            //grid view for recent products
            Flexible(child: Products()),
          ]
      ),
    );
  }

}




