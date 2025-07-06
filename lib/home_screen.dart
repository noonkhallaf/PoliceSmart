import 'package:flutter/material.dart';
import 'posts_page.dart';
import 'emergency_report_page.dart';
import 'map_page.dart';
import 'cybercrime_page.dart';
import 'profile_screen.dart'; // ✅ استيراد شاشة الملف الشخصي

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    PostsPage(),
    EmergencyReportPage(),
    MapPage(),
    CyberCrimePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الرئيسية'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'المنشورات'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: 'بلاغ طارئ'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'الخريطة'),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: 'الجرائم الإلكترونية'),
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
