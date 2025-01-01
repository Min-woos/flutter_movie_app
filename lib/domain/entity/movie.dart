class Movie {
  bool adult;
  String backdroppath;
  List<int> genre_ids;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  final String poster_path;
  String release_date;
  String title;
  bool video;
  String vote_average;
  String vote_count;

  Movie({
    required this.adult,
    required this.backdroppath,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });
}