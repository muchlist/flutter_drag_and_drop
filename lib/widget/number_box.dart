import 'package:flutter/material.dart';

class Rectanglex extends StatelessWidget {
  final String text;

  const Rectanglex({required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
