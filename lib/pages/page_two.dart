import 'package:flutter/material.dart';
import 'package:flutternavigation/core/colors.dart';
import 'package:flutternavigation/pages/page_two_1.dart';

class PageTwo extends StatefulWidget {
  static String route = "page_two";

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Page Two"),
      ),
      body: Center(
        child: RaisedButton(
          color: textColor2,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PageTwoSub()),
            );
          },
          child: Text(
            "More details ...",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
