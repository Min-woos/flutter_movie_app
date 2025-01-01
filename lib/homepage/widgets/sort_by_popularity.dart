import 'package:flutter/material.dart';

class SortByPopularity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NameOfField('인기순'),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 10),
          child: Row(children: [
            ...List.generate(
                20,
                (index) => Stack(children: [
                      Container(
                          padding: EdgeInsets.only(left: 35),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  'https://picsum.photos/600/900',
                                  height: 180))),
                      Positioned(
                          bottom: -20,
                          child: Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.only(right: 10),
                              child: Text('${index + 1}',
                                  style: TextStyle(fontSize: 100))))
                    ]))
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