import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodContent(),
    ));

class FoodContent extends StatefulWidget {
  _FoodContent createState() => _FoodContent();
}

class _FoodContent extends State<FoodContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              'Food Menu',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Image(
                    image: AssetImage('images/image3.jpg'),
                    width: 100,
                    height: 100),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Name : Nasi Goreng Ayam",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Price : Rp 20.000',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image(
                    image: AssetImage('images/image4.jpg'),
                    width: 100,
                    height: 100),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Name : Nasi Goreng Pedas",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Price : Rp 18.000',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
