import 'package:flutter/material.dart';

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
