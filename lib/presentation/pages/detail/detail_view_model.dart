
import 'package:movie_app/domain/entity/movie_detail.dart';
import 'package:movie_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailViewModel extends Notifier<MovieDetail?>{

  Future<void> fetchMovieDetail(int id) async {
    state = await ref.read(fetchMoviesUsecaseProvider).fetchMovieDetailExcute(id);
  }
  
  @override
  MovieDetail? build() {
    return null;
  

}
}
final detailpageViewModel = NotifierProvider<DetailViewModel, MovieDetail?>(
  () => DetailViewModel());