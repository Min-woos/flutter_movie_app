import 'package:flutter/material.dart';

class HomePageLabel extends StatelessWidget {
  const HomePageLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(label),
    );
  }
}