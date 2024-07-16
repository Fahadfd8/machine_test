import 'package:flutter/material.dart';
import 'package:machine_test/widgets/profile_info.dart';

class UrlNavigator extends StatefulWidget {
  @override
  _UrlNavigatorState createState() => _UrlNavigatorState();
}

class _UrlNavigatorState extends State<UrlNavigator> {
  String _url = '';
  int? _userId;

  void _extractUserIdFromUrl(String url) {
    final RegExp regex = RegExp(r'#/user/(\d+)');
    final match = regex.firstMatch(url);
    if (match != null) {
      setState(() {
        _userId = int.tryParse(match.group(1)!);
      });
    } else {
      setState(() {
        _userId = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter URL',
                hintText: '#/user/{userId}',
              ),
              onChanged: (value) {
                setState(() {
                  _url = value;
                  _extractUserIdFromUrl(value);
                });
              },
            ),
            SizedBox(height: 16),
            if (_userId != null)
              ProfileInfo(userId: _userId!),
          ],
        ),
      ),
    );
  }
}
