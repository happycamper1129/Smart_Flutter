import 'package:flutter/material.dart';

class DefaultSecondTitle extends StatelessWidget {
  final String title;
  const DefaultSecondTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.black38)),
    );
  }
}
