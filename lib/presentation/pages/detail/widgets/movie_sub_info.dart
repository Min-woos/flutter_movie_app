import 'package:flutter/material.dart';

class MovieSubInfo extends StatelessWidget {
  const MovieSubInfo({
    super.key,

    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 0.5,
            color: Colors.white,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: SizedBox(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: [
                  Text(value),
                  Text(label),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}