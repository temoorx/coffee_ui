import 'package:coffeeui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false // Application name
        ,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
        ),
        home: HomePage());
  }
}
