import 'package:flutter/material.dart';
import 'package:natural_juice_sales_flutter/Animation/Fade_Animation.dart';
import 'package:natural_juice_sales_flutter/project_data/my_cart_data.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.orange,
              Colors.deepPurple,
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),
              FadeAnimation(
                1.0,
                Container(
                  //color: Colors.orange,
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "MY CART",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  )),
                ),
              ),
              FadeAnimation(
                1.1,
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  //  child: Text("MY CART",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                  child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: MyCartChildrenList.length,
                    itemBuilder: (context, index) {
                      return MyCartChildrenList[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
