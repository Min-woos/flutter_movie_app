import 'package:movie_app/domain/entity/movie.dart';
import 'package:movie_app/domain/entity/movie_detail.dart';
import 'package:movie_app/domain/repository/movie_repository.dart';

class FetchMoviesUsecase {
  FetchMoviesUsecase(this._movieRepository);
  final MovieRepository _movieRepository;

  Future<List<Movie>?> fetchNowPlayingMoviesExecute() async{
    return await _movieRepository.fetchNowPlayingMovies();
  }

    Future<List<Movie>?> fetchPopularMoviesExecute() async{
    return await _movieRepository.fetchPopularMovies();
  }
    Future<List<Movie>?> fetchTopRatedMoviesExecute() async{
    return await _movieRepository.fetchTopRatedMovies();
  }
    Future<List<Movie>?> fetchUpcomingMoviesExecute() async{
    return await _movieRepository.fetchUpcomingMovies();
  }

  Future<MovieDetail?> fetchMovieDetailExcute(int id) async {
    return await _movieRepository.fetchMovieDetail(id);
  }
}