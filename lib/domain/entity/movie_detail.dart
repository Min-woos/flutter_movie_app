class MovieDetail {
    bool adult;
    String backdropPath;
    String belongsToCollection;
    int budget;
    List<dynamic> genres;
    String homepage;
    int id;
    String imdbId;
    List<String> originCountry;
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

    MovieDetail({
        required this.adult,
        required this.backdropPath,
        required this.belongsToCollection,
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
}