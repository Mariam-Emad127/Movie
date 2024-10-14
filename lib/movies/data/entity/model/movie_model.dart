import '../../../domain/entities/movie.dart';
/*
class MovieModel extends Movie {
  MovieModel({required super.id, required super.title, required super.backdropPath,
    //required super.genreIds,
     required super.overview, required super.voteAverage, required super.releaseDate});

  //factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
     factory MovieModel.fromJson(Map<String,dynamic>json) => MovieModel(
    id: json["id"],
    title: json["title"],
    backdropPath: json["backdrop_path"],
    //genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
    overview: json["overview"],
    voteAverage: json["vote_average"].toDouble(),
    releaseDate: json["release_date"],
  );


}
*/

class MovieModel extends Movie {
  MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
    // Uncomment the following if needed in the Movie class
    required super.genreIds,
  });
//Map<String, dynamic>
  factory MovieModel.fromJson(Map<String, dynamic>json) => MovieModel(
        id: json["id"]  ,
        title: json["title"] as String?,
        //backdrop_path
        backdropPath: json["backdrop_path"] ,//as String,
        // Uncomment if you have genreIds
         genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        voteAverage: (json["vote_average"] ?? 0).toDouble(),
        releaseDate: json["release_date"] as String?,
      );
}

