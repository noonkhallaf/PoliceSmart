import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'posts_page.dart';
import 'emergency_report_page.dart';
import 'map_page.dart';
import 'cybercrime_page.dart';
import 'profile_page.dart';

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
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      if (notification != null) {
        const AndroidNotificationDetails androidDetails =
            AndroidNotificationDetails(
          'high_importance_channel',
          'Important Notifications',
          importance: Importance.max,
          priority: Priority.high,
        );
        const NotificationDetails platformDetails =
            NotificationDetails(android: androidDetails);

        FlutterLocalNotificationsPlugin().show(
          0,
          notification.title,
          notification.body,
          platformDetails,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الصفحة الرئيسية')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'المنشورات'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: 'بلاغ طارئ'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'الخريطة'),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: 'الجرائم الإلكترونية'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الملف الشخصي'),
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
