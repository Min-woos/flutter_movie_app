import 'package:flutter/material.dart';

class MovieSubInfo extends StatelessWidget {
  const MovieSubInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                Text('6,909'),
                Text('평점'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}