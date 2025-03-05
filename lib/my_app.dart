import 'package:flutter/material.dart';
import 'package:flutter_application/app_controller.dart';
import 'package:flutter_application/home_page.dart';
import 'package:flutter_application/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness:
                AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
