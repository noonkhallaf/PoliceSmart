import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Page'),
      ),
      body: const Center(
        child: Text(
          'Map will be displayed here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
