import 'package:flutter/material.dart';
import 'package:movie_app/pags/homepage/widgets/sort_by_popularity.dart';
import 'package:movie_app/pags/homepage/widgets/currently_playing.dart';
import 'package:movie_app/pags/homepage/widgets/sort_by_rating.dart';
import 'package:movie_app/pags/homepage/widgets/to_be_released.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('가장 인기있는'),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network('https://picsum.photos/600/900',
                    fit: BoxFit.cover),
              )),
          CurrentlyPlaying(),
          SortByPopularity(),
          SortByRating(),
          ToBeReleased()
        ],
      ),
    );
  }
}