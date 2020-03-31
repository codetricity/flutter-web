import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Demo/Demo.dart';

class ProductPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/target.png",
          width: width,
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Products and Services",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Workflow manage software for marketing campaigns.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Text("Community and event management services.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ],
              ),
            ),
           
                //products

                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Demo()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: Text(
                      "Products",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // services
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Demo()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: Text(
                      "Services",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width / 2, context),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width, context),
        );
      }
    });
  }
}
