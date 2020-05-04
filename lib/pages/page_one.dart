import 'package:flutter/material.dart';
import 'package:flutternavigation/core/colors.dart';
import 'package:flutternavigation/pages/page_two.dart';
import 'package:flutternavigation/widgets/list_item.dart';

class PageOne extends StatelessWidget {
  static String route = "page_one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.add, color: Colors.black87),
          Icon(Icons.share, color: Colors.amber),
          Icon(Icons.my_location),
        ],
        title: Text("Page One"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: bgColor,
        child: ListView(
          children: <Widget>[
            ListItem(order: 1),
            ListItem(order: 2, onPress: _navigateToPageTwo),
            ListItem(order: 3, onPress: _navigateToPageTwo),
            ListItem(order: 4),
            ListItem(order: 5),
            ListItem(order: 6),
            ListItem(order: 7),
            ListItem(order: 8),
            ListItem(order: 9),
            ListItem(order: 10),
          ],
        ),
      ),
    );
  }

  _navigateToPageTwo(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PageTwo()),
    );
  }
}
