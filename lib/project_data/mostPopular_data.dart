import 'package:flutter/material.dart';

List MostPopularList = [
  MostPopular(
      "https://cdn.pixabay.com/photo/2013/07/18/15/07/mango-164572_1280.jpg",
      "Mango"),
  MostPopular(
      "https://cdn.pixabay.com/photo/2017/09/26/13/31/apple-2788616__480.jpg",
      "Apple"),
  MostPopular(
      "https://cdn.pixabay.com/photo/2013/07/13/13/57/avocado-161822__480.png",
      "Avocado"),
  MostPopular(
      "https://cdn.pixabay.com/photo/2020/09/26/07/19/grapes-5603367__480.jpg",
      "Grapes"),
  MostPopular(
      "https://cdn.pixabay.com/photo/2014/12/21/23/39/bananas-575773__480.png",
      "Banana"),
  MostPopular(
      "https://cdn.pixabay.com/photo/2012/04/26/19/35/pears-42897__480.png",
      "Pear"),
];

class MostPopular extends StatelessWidget {
  final String imgUrl;
  final String name;

  const MostPopular(this.imgUrl, this.name);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.amber,
                  width: 1.0,
                ),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
