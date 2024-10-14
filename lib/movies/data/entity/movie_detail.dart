import 'package:movie/movies/data/entity/model/genres_model.dart';
 import 'package:movie/movies/domain/entities/movie_detail.dart';

class MovieDetailModel  extends MovieDetail {
const MovieDetailModel({
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailModel(
        backdropPath: json["backdrop_path"],
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        runtime: json["runtime"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
      );
  /*
  const MovieDetailModel({
    required super.adult, required super.backdropPath,
   required super.budget, required super.homepage, required super.id, 
   required super.imdbId, required super.originCountry,
    required super.originalLanguage, required super.originalTitle,
     required super.overview, required super.popularity,
      required super.posterPath, required super.releaseDate, 
      required super.revenue, required super.runtime, 
      required super.status, required super.tagline, required super.title, 
      required super.video, required super.voteAverage, required super.voteCount, 
      required super.genres
      })  ;
  

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
    adult : json['adult'],
    backdropPath : json['backdrop_path'],
    //belongsToCollection : json['belongs_to_collection'],
    budget : json['budget'],
  
     
    //genres:List<GenresModel>.from( json["genres"].map((x) => GenresModel.fromJson(x))),
    homepage : json['homepage'],
    id : json['id'],
    imdbId : json['imdb_id'],
    originCountry : json['origin_country'].cast<String>(),
    originalLanguage : json['original_language'],
    originalTitle : json['original_title'],
    overview : json['overview'],
    popularity : json['popularity'],
    posterPath : json['poster_path'],
    releaseDate : json['release_date'],
    revenue : json['revenue'],
    runtime : json['runtime'],
    status: json['status'],
    tagline : json['tagline'],
    title : json['title'],
    video : json['video'],
    voteAverage : json['vote_average'],
    voteCount : json['vote_count'],
       genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
    );
  }

  */
}

 

/*
class ProductionCompanies {
  int? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompanies({this.id, this.logoPath, this.name, this.originCountry});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logo_path'] = this.logoPath;
    data['name'] = this.name;
    data['origin_country'] = this.originCountry;
    return data;
  }
}

class ProductionCountries {
  String? iso31661;
  String? name;

  ProductionCountries({this.iso31661, this.name});

  ProductionCountries.fromJson(Map<String, dynamic> json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_3166_1'] = this.iso31661;
    data['name'] = this.name;
    return data;
  }
}

class SpokenLanguages {
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguages({this.englishName, this.iso6391, this.name});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english_name'] = this.englishName;
    data['iso_639_1'] = this.iso6391;
    data['name'] = this.name;
    return data;
  }
  */
 
//}


