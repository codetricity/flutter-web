import 'package:flutter/material.dart';
import 'package:responsive/LandingPage/LandingPage.dart';
import 'package:responsive/Navbar/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oppkey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Rubik",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff05AAE3),
              Color.fromRGBO(2, 73, 96, 1.0)
            ]
          ),
        ),
        child: SingleChildScrollView(
                  child: Column(children: <Widget>[
            Navbar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            ),
          ],
          ),
        )
      ),
      
    );
  }
}