import 'package:flutter/material.dart';

class NotificationSystem {
  static void show(BuildContext context, String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        content: Text(message),
        backgroundColor: color,
        showCloseIcon: true,
      ),
    );
  }
}
