import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/Elements/fruitscat.dart';
import 'package:flutter_app/Elements/veggiescat.dart';
import 'package:flutter_app/Elements/exoticcat.dart';

class CategoryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Tab',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      debugShowCheckedModeBanner: false,
      // ),
      home: DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                  (context)=> new HomePage()));},
              child: Text('Home')),
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
          bottom: TabBar(tabs: [
            Tab(text: "FRUITS",),
            Tab(text: "VEGETABLES",),
            Tab(text: "EXOTIC",),
          ],),
        ),
             body: TabBarView(children: [
               Fruits(),
               Veggies(),
               Exotic(),
         ],),
      ),),
    );
  }
}
