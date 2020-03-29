import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren() {
    return <Widget> [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Expand Product \nTrust",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white), ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text("Strengthen relationships with hundreds of "
                "thought leaders by working with " 
                "staff, customers, partners, and evangelists using our scalable platform.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
                ),),
              ),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Request Demo",
                  style: TextStyle(color: Colors.red),
                  ),
              ),
          ],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(),);          
        } else {
          return Column(
            children: pageChildren(),
          );
        }
      }
    );
  }
}