import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainContent(),
    ));

class MainContent extends StatefulWidget {
  _MainContent createState() => _MainContent();
}

class _MainContent extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Visit Us',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(
              height: 10.0,
            ),
            Image.asset(
              "images/image2.jpg",
              width: 300.0,
            ),
            Text('Mesra Jaya Taman Rakyat Enteprise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            Text('0944501011'),
            Text('mesrajaya@gmail.com'),
          ],
        ),
      ),
    );
  }
}
