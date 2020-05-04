import 'package:flutter/material.dart';
import 'package:flutternavigation/pages/home.dart';
import 'package:flutternavigation/pages/page_one.dart';
import 'package:flutternavigation/pages/page_two.dart';
import 'package:flutternavigation/pages/page_two_1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(primaryColor: Colors.blue),
      routes: {
        Home.route: (context) => Home(),
        PageOne.route: (context) => PageOne(),
        PageTwo.route: (context) => PageTwo(),
        PageTwoSub.route: (context) => PageTwoSub()
      },
      initialRoute: Home.route,
    );
  }
}
