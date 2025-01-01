import 'dart:convert';

class MovieDetailDto {
  bool adult;
  String backdropPath;
  int budget;
  List<int> genres;
  String homepage;
  int id;
  String imdbId;
  List<dynamic> originCountry;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<dynamic> productionCompanies;
  List<dynamic> productionCountries;
  DateTime releaseDate;
  int revenue;
  int runtime;
  List<dynamic> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  MovieDetailDto({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  MovieDetailDto copyWith({
    bool? adult,
    String? backdropPath,
    int? budget,
    List<int>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    List<dynamic>? originCountry,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<dynamic>? productionCompanies,
    List<dynamic>? productionCountries,
    DateTime? releaseDate,
    int? revenue,
    int? runtime,
    List<dynamic>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return MovieDetailDto(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      budget: budget ?? this.budget,
      genres: List<int>.from(genres ?? []),
      homepage: homepage ?? this.homepage,
      id: id ?? this.id,
      imdbId: imdbId ?? this.imdbId,
      originCountry: originCountry ?? this.originCountry,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      productionCountries: productionCountries ?? this.productionCountries,
      releaseDate: releaseDate ?? this.releaseDate,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  factory MovieDetailDto.fromJson(Map<String, dynamic> json) {
    return MovieDetailDto(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? '',
      budget: json['budget'] ?? 0,
      genres: List<int>.from(json['genre_ids'] ?? []),
      homepage: json['homepage'] ?? '',
      id: json['id'] ?? 0,
      imdbId: json['imdb_id'] ?? '',
      originCountry: json['origin_country'] ?? [],
      originalLanguage: json['original_language'] ?? '',
      originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] ?? '',
      productionCompanies: json['production_companies'] ?? [],
      productionCountries: json['production_countries'] ?? [],
      releaseDate: json['release_date'] != null
          ? DateTime.parse(json['release_date'])
          : DateTime(1970),
      revenue: json['revenue'] ?? 0,
      runtime: json['runtime'] ?? 0,
      spokenLanguages: json['spoken_languages'] ?? [],
      status: json['status'] ?? '',
      tagline: json['tagline'] ?? '',
      title: json['title'] ?? '',
      video: json['video'] ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath.isNotEmpty ? backdropPath : null,
      'budget': budget,
      'genres': genres,
      'homepage': homepage.isNotEmpty ? homepage : null,
      'id': id,
      'imdb_id': imdbId.isNotEmpty ? imdbId : null,
      'origin_country': originCountry,
      'original_language': originalLanguage.isNotEmpty ? originalLanguage : null,
      'original_title': originalTitle.isNotEmpty ? originalTitle : null,
      'overview': overview.isNotEmpty ? overview : null,
      'popularity': popularity,
      'poster_path': posterPath.isNotEmpty ? posterPath : null,
      'production_companies': productionCompanies,
      'production_countries': productionCountries,
      'release_date': releaseDate.toIso8601String(),
      'revenue': revenue,
      'runtime': runtime,
      'spoken_languages': spokenLanguages,
      'status': status.isNotEmpty ? status : null,
      'tagline': tagline.isNotEmpty ? tagline : null,
      'title': title.isNotEmpty ? title : null,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}