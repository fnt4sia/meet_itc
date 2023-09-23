import 'package:flutter/material.dart';

class hiApp extends StatelessWidget {
  const hiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'HI BEB',
          style: TextStyle(
            fontSize: 32,
            color: Colors.black,
            letterSpacing: 5,
          ),
        ),
      ),
    );
  }
}
