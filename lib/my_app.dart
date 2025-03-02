import 'package:flutter/material.dart';
import 'package:flutter_application/home_page.dart';

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}