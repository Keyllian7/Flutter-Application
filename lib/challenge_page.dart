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
            ImageLogo(),
            SizedBox(height: 50),
            Title(),
            SizedBox(height: 5),
            Subtitle(),
            SizedBox(height: 50),
            Button(),
          ],
        ),
      ),
    );
  }
}

class ImageLogo extends StatelessWidget {
  const ImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Image.asset('assets/images/tinder.png'),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Location Changer',
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Plugin app for tinder',
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.redAccent,
        minimumSize: Size(350, 75),
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
      child: Text('Login with Facebook', style: TextStyle(fontSize: 25)),
    );
  }
}
