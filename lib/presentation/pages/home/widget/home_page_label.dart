import 'package:flutter/material.dart';

class HomePageLabel extends StatelessWidget {
  HomePageLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(label),
    );
  }
}