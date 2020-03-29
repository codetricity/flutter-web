import 'package:flutter/material.dart';

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

            Text("Portfolio", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),
            Text("About", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){},
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

            Text("Portfolio", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),
            Text("About", 
            style: TextStyle(color:Colors.white),
            ),
            SizedBox(width: 30,),
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){},
              child: Text("Services",
              style: TextStyle(color: Colors.white),),
            )

          ],),
        ],
      ),
    );
  }
}