class MovieResponseDto {
  bool adult;
  String backdroppath;
  List<int> genre_ids;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  String title;
  bool video;
  String vote_average;
  String vote_count;

  MovieResponseDto({
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

  MovieResponseDto.fromJson(Map<String, dynamic> json)
      : this(
          adult: json['adult'] ?? false,
          backdroppath: json['backdroppath'] ?? '',
          genre_ids: List<int>.from(json['genre_ids'] ?? []),
          id: json['id'] ?? 0,
          original_language: json['original_language'] ?? '',
          original_title: json['original_title'] ?? '',
          overview: json['overview'] ?? '',
          popularity: json['popularity'] ?? 0.0,
          poster_path: json['poster_path'] ?? '',
          release_date: json['release_date'] ?? '',
          title: json['title'] ?? '',
          video: json['video'] ?? false,
          vote_average: json['vote_average']?.toString() ?? '0.0',
          vote_count: json['vote_count']?.toString() ?? '0',
        );

  MovieResponseDto copyWith({
    bool? adult,
    String? backdroppath,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    String? vote_average,
    String? vote_count,
  }) =>
      MovieResponseDto(
        adult: adult ?? this.adult,
        backdroppath: backdroppath ?? this.backdroppath,
        genre_ids: genre_ids ?? this.genre_ids,
        id: id ?? this.id,
        original_language: original_language ?? this.original_language,
        original_title: original_title ?? this.original_title,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        poster_path: poster_path ?? this.poster_path,
        title: title ?? this.title,
        video: video ?? this.video,
        release_date: release_date ?? this.release_date,
        vote_average: vote_average ?? this.vote_average,
        vote_count: vote_count ?? this.vote_count,
      );

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdroppath': backdroppath.isNotEmpty ? backdroppath : null,
      'genre_ids': genre_ids.isNotEmpty ? genre_ids : null,
      'id': id,
      'original_language': original_language.isNotEmpty ? original_language : null,
      'original_title': original_title.isNotEmpty ? original_title : null,
      'overview': overview.isNotEmpty ? overview : null,
      'popularity': popularity,
      'poster_path': poster_path.isNotEmpty ? poster_path : null,
      'title': title.isNotEmpty ? title : null,
      'video': video,
      'release_date': release_date.isNotEmpty ? release_date : null,
      'vote_average': vote_average.isNotEmpty ? vote_average : null,
      'vote_count': vote_count.isNotEmpty ? vote_count : null,
    };
  }
}