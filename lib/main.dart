import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(title: 'Aprendendo Flutter'));
}

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

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'Contagem: $counter',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              counter++;
              print('$counter');
            });
          },
        ),
      ),
    );
  }
}
