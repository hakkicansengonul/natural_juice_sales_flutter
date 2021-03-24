import 'package:flutter/material.dart';

List PopularPageList = [
  popularPage(
      "https://cdn.pixabay.com/photo/2020/08/13/08/36/orange-juice-5484536__480.png",
      "Orange Juice",
      8.65),
  popularPage(
      "https://cdn.pixabay.com/photo/2012/04/14/15/57/drinks-34377_1280.png",
      "Strawberry Juice",
      11.95),
  popularPage(
      "https://cdn.pixabay.com/photo/2020/06/13/07/32/watercolor-cocktail-5293088__480.png",
      "Blackberry Juice",
      5.55),
];

class popularPage extends StatelessWidget {
  final String imgUrl;
  final String name;
  final double price;

  const popularPage(this.imgUrl, this.name, this.price);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        color: Colors.deepPurple,
        child: Container(
          height: 300.0,
          width: 280.0,
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(.1),
            borderRadius: BorderRadius.circular(20.0),
            //  boxShadow: [BoxShadow(color: Colors.black.withOpacity(.6),offset: Offset(2.0, 0.0),),],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10.0,
                left: 40.0,
                child: Container(
                  height: 270.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.contain),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: Container(
                  height: 100.0,
                  width: 300.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 80.0,
                        width: 170.0,
                        // color: Colors.orange,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                            Text(
                              "\$$price",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        //color: Colors.orange,
                        child: Center(
                            child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 30.0,
                        )),
                      ),
                    ],
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
