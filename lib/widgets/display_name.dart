import 'package:flutter/material.dart';

class DisplayName extends StatelessWidget {
  final String firstName;
  final String secondName;
  final String prefix;
  final String suffix;

  const DisplayName({
    Key? key,
    required this.firstName,
    required this.secondName,
    required this.prefix,
    required this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$prefix$firstName $secondName$suffix',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
