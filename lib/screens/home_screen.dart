import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:natural_juice_sales_flutter/screens/home_page.dart';
import 'package:natural_juice_sales_flutter/screens/my_cart_screen.dart';
import 'package:natural_juice_sales_flutter/screens/person_screen.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.orange,
        index: 0,
        backgroundColor: Colors.deepPurple,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.signal_cellular_alt_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0
          ? HomePage()
          : newindex == 1
              ? MyCartPage()
              : newindex == 3
                  ? ProfilePage()
                  : null,
    );
  }
}
