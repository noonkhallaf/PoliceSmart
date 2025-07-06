import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, String> userInfo = {
    'الاسم الكامل': 'نور الدين وائل عرجان',
    'الرتبة': 'ملازم أول',
    'الرقم العسكري': '121417890',
    'رقم الهوية': '408629962',
    'فصيلة الدم': 'O+',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الملف الشخصي')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: userInfo.entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Text('${entry.key}: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Expanded(child: Text(entry.value)),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
