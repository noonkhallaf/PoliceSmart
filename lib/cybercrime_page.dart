import 'package:flutter/material.dart';

class CyberCrimePage extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('بلاغ جريمة إلكترونية')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'يرجى كتابة تفاصيل الجريمة أو رابط الموقع:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'تفاصيل الجريمة...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم إرسال البلاغ')),
                );
                _controller.clear();
              },
              child: const Text('إرسال البلاغ'),
            ),
          ],
        ),
      ),
    );
  }
}
