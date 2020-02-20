import 'package:flutter/material.dart';

import 'AdminDashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[800],
        fontFamily: 'Roboto',
      ),
      home: AdminDashboard(),
    );
  }
}