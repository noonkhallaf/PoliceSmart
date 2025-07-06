import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PoliceSmart Home'),
      ),
      body: const Center(
        child: Text(
          'This is the Home Screen.',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
