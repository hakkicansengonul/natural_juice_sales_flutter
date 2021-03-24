import 'package:flutter/material.dart';
import 'package:natural_juice_sales_flutter/Animation/Fade_Animation.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.deepPurple),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FadeAnimation(
          1.2,
          Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Container(
                height: 140.0,
                width: 140.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 4.0),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Profile"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Advice"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("My Favorites"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Settings"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Sign out"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profilecontainer(String title) {
  return Container(
    height: 40.0,
    width: 140.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: Colors.orange),
    child: Center(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
