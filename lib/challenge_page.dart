import 'package:flutter/material.dart';

class Challenge extends StatelessWidget {
  const Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset('assets/images/tinder.png'),
            ),
            SizedBox(height: 50),
            Text(
              'Location Changer',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 5),
            Text(
              'Plugin app for tinder',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.redAccent,
                minimumSize: Size(350, 75),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Text(
                'Login with Facebook',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
