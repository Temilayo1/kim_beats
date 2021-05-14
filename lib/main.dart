import 'package:flutter/material.dart';
import 'package:kim_beats/colors.dart';
import 'package:kim_beats/todo/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hfhfi',
      color: Colors.yellow,

      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: primarySwatch,
      ),

      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}
