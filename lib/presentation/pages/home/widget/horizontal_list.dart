import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/detail/detail_page.dart';
import 'package:movie_app/presentation/pages/home/home_page.dart';
import 'package:movie_app/presentation/pages/home/home_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalList extends ConsumerStatefulWidget {
  final MovieCategory category;

  const HorizontalList({super.key, required this.category});

  @override
  ConsumerState<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends ConsumerState<HorizontalList> {
  @override
  void initState() {
    super.initState();
    // 카테고리에 맞는 영화 데이터를 불러옵니다.
    ref.read(homepageListViewModel.notifier).fetchMoviesForCategory(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 180,
          child: Consumer(builder: (context, ref, child) {
            // category에 맞는 데이터를 가져옵니다.
            final movies = ref.watch(homepageListViewModel)[widget.category];
            if (movies == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(movie.id),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 120,
                        child: Image.network(
                                  movie.poster_path.isNotEmpty
                              ? 'https://image.tmdb.org/t/p/w400${movie.poster_path}'
                              : 'https://via.placeholder.com/400${movie.backdroppath}', // 대체 이미지 URL
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}