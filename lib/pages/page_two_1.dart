import 'package:flutter/material.dart';
import 'package:flutternavigation/core/colors.dart';
import 'package:flutternavigation/pages/home.dart';
import 'package:flutternavigation/pages/page_one.dart';

class PageTwoSub extends StatefulWidget {
  static String route = "page_two_1";

  @override
  _PageTwoSub createState() => _PageTwoSub();
}

class _PageTwoSub extends State<PageTwoSub> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.popUntil(context, ModalRoute.withName(Home.route));
        Navigator.pushNamed(context, Home.route);
        return Future.value(true);
      },
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade400,
          title: Text("Page 2/1"),
        ),
        body: Center(
          child: Text(
            "Details",
            style: TextStyle(color: textColor, fontSize: 50),
          ),
        ),
      ),
    );
  }
}
