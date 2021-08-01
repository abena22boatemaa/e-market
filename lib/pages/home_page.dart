import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/Elements/products.dart';
import 'package:flutter_app/pages/cart.dart';
import 'about.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/pages/authentication/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool validate = false;
  final AuthService _auth = AuthService();
  List<String> carouselImages=[
    'images/carousel/CS1.jpg',
    'images/carousel/CS2.png',
    'images/carousel/CS3.png',
    'images/carousel/CS4.jpg',
    'images/carousel/CS5.jpg',
    'images/carousel/CS6.jpg',
    'images/carousel/CS7.jpg',
    'images/carousel/CS8.jpg',
    'images/carousel/CS9.jpg',
    'images/carousel/CS10.jpg',
    'images/carousel/CS11.jpg',
    'images/carousel/CS12.jpg',
    'images/carousel/CS13.jpg',
    'images/carousel/CS14.jpg'
  ];
  @override
  Widget build(BuildContext context) {


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
                    (context) => new CartPage()));
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => new CartPage()));
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

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.settings,),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => new About()));
              },
              child: ListTile(
                title: Text('About', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.help),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () async {

                //pop box yes or no

                await _auth.signOut();
                print('logout successful');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: ListTile(
                title: Text('Logout', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                leading: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),

      body: Column(
          children: [
            Container(child: CarouselSlider(
              options:CarouselOptions(
                autoPlay:true,
                aspectRatio: 2.0,
                enlargeCenterPage: true
              ),
              items: imageSlider(carouselImages)
            )),

            // padding widget for the categories
            // new Padding(padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     alignment: Alignment.centerLeft,
            //     child: new Text('Categories',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,
            //           color: Colors.black54),),),),
            // items under categories begins here(horizontal list)
            //HorizontalList(),

            // padding widget for the categories
            new Padding(padding: const EdgeInsets.all(5.0),
              child: Container(
                alignment: Alignment.center,
                child: new Text('Recent products', style:
                TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18.0, color: Colors.black54),),),),

            //grid view for recent products
            Flexible(child: Products()),
            ]
            ),






    );}
    List<Widget> imageSlider(List<String> imgList){
      return imgList.map((item) => Container(child: Container(margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child:Image.asset(item,fit:BoxFit.cover,width:1000)
      ),
      ),)).toList();
    }
  }


