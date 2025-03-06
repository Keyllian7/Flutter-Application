import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                        'assets/images/logo.png'
                    )
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'key@example.com' && password == '1234') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/stadium.jpg', fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withAlpha((0.5 * 255).toInt()),
            ),
            _body(),
          ],
        )
    );
  }
}
