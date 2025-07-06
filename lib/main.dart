import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(PoliceSmartApp());
}

class PoliceSmartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Police Smart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
