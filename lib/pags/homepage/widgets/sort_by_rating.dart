import 'package:flutter/material.dart';

class SortByRating extends StatelessWidget {
  const SortByRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NameOfField('평점 높은순'),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            ...List.generate(
                20,
                (index) => Container(
                    padding: const EdgeInsets.only(right: 10),
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://picsum.photos/600/900',
                            height: 180))))
          ]))
    ]);
  }

  Container NameOfField(String name) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(20),
        child: Text(name));
  }
}