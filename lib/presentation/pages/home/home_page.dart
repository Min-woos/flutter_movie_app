import 'package:movie_app/domain/entity/movie.dart';
import 'package:movie_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum MovieCategory {
  nowPlaying,
  popular,
  topRated,
  upcoming,
}

class HomePageViewModel extends Notifier<Map<MovieCategory, List<Movie>?>> {
  @override
  Map<MovieCategory, List<Movie>?> build() {
    return {
      MovieCategory.nowPlaying: null,
      MovieCategory.popular: null,
      MovieCategory.topRated: null,
      MovieCategory.upcoming: null,
    };
  }

  Future<void> fetchMoviesForCategory(MovieCategory category) async {
    try {
      List<Movie> movies = [];
      switch (category) {
        case MovieCategory.nowPlaying:
          movies = (await ref.read(fetchMoviesUsecaseProvider).fetchNowPlayingMoviesExecute())!;
          break;
        case MovieCategory.popular:
          movies = (await ref.read(fetchMoviesUsecaseProvider).fetchPopularMoviesExecute())!;
          break;
        case MovieCategory.topRated:
          movies = (await ref.read(fetchMoviesUsecaseProvider).fetchTopRatedMoviesExecute())!;
          break;
        case MovieCategory.upcoming:
          movies = (await ref.read(fetchMoviesUsecaseProvider).fetchUpcomingMoviesExecute())!;
          break;
      }
      state = {
        ...state,
        category: movies,
      };
    } catch (e) {
      // 예외 처리
      state = {
        ...state,
        category: [],
      };
      print('Error fetching movies for category $category: $e');
    }
  }
}

final homepageListViewModel = NotifierProvider<HomePageViewModel, Map<MovieCategory, List<Movie>?>>(
  () => HomePageViewModel(),
);