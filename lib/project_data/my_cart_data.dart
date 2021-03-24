import 'package:flutter/material.dart';

List MyCartChildrenList = [
  MyCartChildren(
    "https://cdn.pixabay.com/photo/2020/06/13/07/32/watercolor-cocktail-5293088_1280.png",
    "Apple Juice",
  ),
  MyCartChildren(
    "https://cdn.pixabay.com/photo/2012/04/14/15/57/drinks-34377__480.png",
    "Strawberry Juice",
  ),
  MyCartChildren(
    "https://cdn.pixabay.com/photo/2016/04/01/11/01/awesome-1300162__480.png",
    "Orange Juice",
  ),
];

class MyCartChildren extends StatefulWidget {
  final String imgurl;
  final String name;

  const MyCartChildren(
    this.imgurl,
    this.name,
  );

  @override
  _MyCartChildrenState createState() => _MyCartChildrenState();
}

class _MyCartChildrenState extends State<MyCartChildren> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 250.0,
        width: 400.0,
        color: Colors.deepPurple,
        child: Row(
          children: [
            Container(
              height: 220.0,
              width: 190.0,
              decoration: BoxDecoration(
                //color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(widget.imgurl), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 220.0,
              width: 190.0,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "lorem ipsum dolor sit amet",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "\$8.66",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
