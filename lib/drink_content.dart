import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrinkContent(),
    ));

class DrinkContent extends StatefulWidget {
  _DrinkContent createState() => _DrinkContent();
}

class _DrinkContent extends State<DrinkContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Drink Menu',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Image(
                  image: AssetImage('images/image5.jpeg'),
                  width: 150),
            ),
            Text(
              'Name : Starbucks Coffee Original',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            Text(
              'Price : Rp 50.000',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Image(
                  image: AssetImage('images/image6.jpg'),
                  width: 150),
            ),
            Text(
              'Name : Starbucks Coffee Blend',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            Text(
              'Price : Rp 60.000',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
