import 'package:flutter/material.dart';
import 'package:responsive/Services/Services.dart';
import 'package:responsive/About/About.dart';
import 'package:responsive/Portfolio/Portfolio.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text("Oppkey \nOnline Community Experts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Row(children: <Widget>[
            Text("Home", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),

            // Portfolio
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Portfolio()),
                );                
              },
              focusColor: Color(0xffF04D22),
              child: Text("Portfolio", 
              style: TextStyle(color:Colors.white),
              ),
            ),
            SizedBox(width: 30,),
            
            // About
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );                
              },
              child: Text("About", 
              style: TextStyle(color: Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),
            SizedBox(width: 30,),
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Services()),
                );
              },
              child: Text("Services",
              style: TextStyle(color: Colors.white),),
            )

          ],)
        ],
        ),
      ),
    );
  }
}


class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40 ),
      child: Column(
        children: <Widget>[
          Text("Oppkey \nOnline Community Experts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("Home", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),

            // Portfolio
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Portfolio()),
                );
              },
              child: Text("Portfolio", 
              style: TextStyle(color:Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),
            SizedBox(width: 30,),


            // About
            FlatButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: Text("About", 
              style: TextStyle(color:Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),

            // spacing between row elements
            SizedBox(width: 30,),

            // Services
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Services()),
                );
              },
              child: Text("Services",
              style: TextStyle(color: Colors.white),),
            )

          ],),
        ],
      ),
    );
  }
}