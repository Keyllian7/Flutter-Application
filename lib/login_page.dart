import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/notification_system.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
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
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 20, bottom: 12),
                child: Column(
                  children: [
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.limeAccent,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        if (email == 'key@example.com' && password == '1234') {
                          NotificationSystem.show(context, 'Login successful', color: Colors.green);
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          NotificationSystem.show(context, 'Invalid email or password', color: Colors.red);
                        }
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Text('Login', textAlign: TextAlign.center),
                        ),
                    ),
                  ],
                ),
              ),
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
            child: Image.asset('assets/images/stadium.jpg', fit: BoxFit.cover),
          ),
          Container(color: Colors.black.withAlpha((0.5 * 255).toInt())),
          _body(),
        ],
      ),
    );
  }
}
