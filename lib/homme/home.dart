import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.all(65),
        child: Center(
          child: const Text(
            'This is Home Page',
            style: TextStyle(fontSize: 28),
          ),
        ),
        color: Colors.green,
      ),
    );
  }
}
