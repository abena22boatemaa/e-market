import 'package:flutter/material.dart';
import 'package:flutter_app/pages/categories_details.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/orders_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}



class _DashboardState extends State<Dashboard> {
  int _page =0;
  List<Widget> _mainPages()=>[
    HomePage(),
    CategoryDetails(),
    OrdersPage()
  ];
  void onPageSelected(int index){
    setState(() {
      _page = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> mainPages = _mainPages();
    return Scaffold(
      body: mainPages[_page],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _page,
          onTap: onPageSelected,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(color:Colors.blue,
              fontWeight: FontWeight.bold,fontSize: 16.0),
          unselectedLabelStyle: TextStyle(color:Colors.black,fontSize: 14,),
          unselectedItemColor: Colors.black,
          items: [
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
        label: 'Home' ,

    ),

    BottomNavigationBarItem(
    icon: Icon(Icons.dashboard, ),
    label: 'Category',
    ),

    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_basket,),
    label: 'My Orders',
    )]),
    );
  }
}
