import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tutorial3_e00091/main_content.dart';
import 'package:tutorial3_e00091/food_content.dart';
import 'package:tutorial3_e00091/drink_content.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstScreen(),
  ));

class FirstScreen extends StatefulWidget {
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {

  Widget mainWidget;

  void initState() {
    mainWidget = MainContent();
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  _loadingExit() {
    showDialog(context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Row(
          children: [
            CircularProgressIndicator(),
            Text('Loading'),
          ],
        ),
      );
    });
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
      exit(0);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Home Screen'),
      ),
      body: Container (
        padding: EdgeInsets.all(10.0),
        child: mainWidget,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.yellow
              ),
              child: Container(
                child: Column (
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("images/image1.jpg"),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text ('Kedai Kek Kite', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text ('lisherarizqi@gmail.com', style: TextStyle(fontSize: 12),)
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Location'),
              onTap: () {
                setState(() {
                  mainWidget = MainContent();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.folder_special_rounded),
              title: Text('Food'),
              onTap: () {
                setState(() {
                  mainWidget = FoodContent();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book_outlined),
              title: Text('Drink'),
              onTap: () {
                setState(() {
                  mainWidget = DrinkContent();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () {
                _loadingExit();
              },
            ),
          ],
        ),
      ),
    );
  }
}
