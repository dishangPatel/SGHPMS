import 'package:flutter/material.dart';
import 'package:project_management_system/AddProject.dart';
import 'AdminDashboard.dart';
import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Management System',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[800],
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/adminDashboard': (context) => AdminDashboard(),
        '/addProject': (context) => AddProject(),
      },
    );
  }
}
