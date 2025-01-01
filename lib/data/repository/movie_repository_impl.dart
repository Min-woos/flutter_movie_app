import 'package:movie_app/data/data_source/movie_data_source.dart';
import 'package:movie_app/domain/entity/movie.dart';
import 'package:movie_app/domain/entity/movie_detail.dart';
import 'package:movie_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(
    this._movieDataSource,
  );
  final MovieDataSource _movieDataSource;

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() async {
    final result = await _movieDataSource.fetchNowPlayingMovies();
    return result
        .map((e) => Movie(
              adult: e.adult,
              genre_ids: e.genre_ids,
              id: e.id,
              original_title: e.original_title,
              overview: e.overview,
              popularity: e.popularity,
              poster_path: e.poster_path,
              release_date: e.release_date,
              vote_average: e.vote_average,
              vote_count: e.vote_count,
              backdroppath: e.backdroppath,
              original_language: e.original_language,
              title: e.title,
              video: e.video,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() async {
    final result = await _movieDataSource.fetchPopularMovies();
    return result
        .map((e) => Movie(
              adult: e.adult,
              genre_ids: e.genre_ids,
              id: e.id,
              original_title: e.original_title,
              overview: e.overview,
              popularity: e.popularity,
              poster_path: e.poster_path,
              release_date: e.release_date,
              vote_average: e.vote_average,
              vote_count: e.vote_count,
              backdroppath: e.backdroppath,
              original_language: e.original_language,
              title: e.title,
              video: e.video,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() async {
    final result = await _movieDataSource.fetchTopRatedMovies();
    return result
        .map((e) => Movie(
              adult: e.adult,
              genre_ids: e.genre_ids,
              id: e.id,
              original_title: e.original_title,
              overview: e.overview,
              popularity: e.popularity,
              poster_path: e.poster_path,
              release_date: e.release_date,
              vote_average: e.vote_average,
              vote_count: e.vote_count,
              backdroppath: e.backdroppath,
              original_language: e.original_language,
              title: e.title,
              video: e.video,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchUpcomingMovies() async {
    final result = await _movieDataSource.fetchUpcomingMovies();
    return result
        .map((e) => Movie(
              adult: e.adult,
              genre_ids: e.genre_ids,
              id: e.id,
              original_title: e.original_title,
              overview: e.overview,
              popularity: e.popularity,
              poster_path: e.poster_path,
              release_date: e.release_date,
              vote_average: e.vote_average,
              vote_count: e.vote_count,
              backdroppath: e.backdroppath,
              original_language: e.original_language,
              title: e.title,
              video: e.video,
            ))
        .toList();
  }

  @override
  Future<MovieDetail?> fetchMovieDetail(int id) async {
    final e = await _movieDataSource.fetchMovieDetail(id);
    return MovieDetail(
        adult: e.adult,
        backdropPath: e.backdropPath,
        id: e.id,
        originalLanguage: e.originalLanguage,
        budget: e.budget,
        genres: e.genres,
        homepage: e.homepage,
        imdbId: e.imdbId,
        productionCompanies: e.productionCompanies,
        productionCountries: e.productionCountries,
        revenue: e.revenue,
        runtime: e.runtime,
        spokenLanguages: e.spokenLanguages,
        status: e.status,
        tagline: e.tagline,
        originalTitle: e.originalTitle,
        overview: e.overview,
        popularity: e.popularity,
        posterPath: e.posterPath,
        releaseDate: e.releaseDate,
        title: e.title,
        video: e.video,
        voteAverage: e.voteAverage,
        voteCount: e.voteCount,
        belongsToCollection: '',
        originCountry: []);
  }
}