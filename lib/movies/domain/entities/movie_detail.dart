import 'package:equatable/equatable.dart';
import 'package:movie/movies/domain/entities/genres.dart';

class MovieDetail extends Equatable {
   final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetail({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object> get props => [
        backdropPath ,
        genres,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
 /*
  final bool adult;
  final String backdropPath;
  final int budget;
  final String homepage;
 final int id;
  final String imdbId;
  final List<String> originCountry;
final  String originalLanguage;
 final String originalTitle;
final  String overview;
 final double popularity;
final  String posterPath;
  
 final String releaseDate;
 final int revenue;
 final int runtime;
 final  String status;
 final String tagline;
 final String title;
 final bool video;
 final double voteAverage;
  final int voteCount;
  final List<Genres> genres;


 const MovieDetail(
      {required this.adult,
      required this.backdropPath, 
     required this.budget,
    
     required this.homepage,
    required  this.id,
     required this.imdbId,
     required this.originCountry,
     required this.originalLanguage,
     required this.originalTitle,
     required this.overview,
     required this.popularity,
     required this.posterPath,
     required this.releaseDate,
     required this.revenue,
     required this.runtime,
     required this.status,
     required this.tagline,
    required  this.title,
     required this.video,
     required this.voteAverage,
   required   this.voteCount,
   required this.genres

   });
 
@override
  List<Object> get props => [
       adult,
   backdropPath,
 
 budget,
   genres,
  homepage,
     id,
    imdbId,
 originCountry,
  originalLanguage,
   originalTitle,
  overview,
    posterPath,
 
 
   releaseDate,
   revenue,   runtime,
    
   status,
   tagline,
   title,
  video,
  voteAverage,
  voteCount

      ];
*/
}



