import 'package:movie_app/data/data_source/movie_asset_data_source_impl.dart';
import 'package:movie_app/data/data_source/movie_data_source.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:movie_app/domain/repository/movie_repository.dart';
import 'package:movie_app/domain/usecase/fetch_movies_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieDataSourceProvider = Provider<MovieDataSource>((ref) {
  return MovieAssetDataSourceImpl();
});

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) {
    final dataSource =ref.read(movieDataSourceProvider);
    return MovieRepositoryImpl(dataSource);
  }
);

final fetchMoviesUsecaseProvider = Provider(
  (ref) {
    final movieRepo = ref.read(movieRepositoryProvider);
    return FetchMoviesUsecase(movieRepo);
  },
);