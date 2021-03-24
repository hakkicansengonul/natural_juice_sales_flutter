import 'package:flutter/material.dart';
import 'package:natural_juice_sales_flutter/Animation/Fade_Animation.dart';
import 'package:natural_juice_sales_flutter/project_data/mostPopular_data.dart';
import 'package:natural_juice_sales_flutter/project_data/popular_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.deepPurple,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FadeAnimation(
                1.0,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Juice",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 100.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: MostPopularList.length,
                  itemBuilder: (context, index) {
                    return MostPopularList[index];
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "Most Popular",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 380.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PopularPageList.length,
                  itemBuilder: (context, index) {
                    return PopularPageList[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
