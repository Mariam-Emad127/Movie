import 'package:equatable/equatable.dart';



  class Movie extends Equatable {
  final int id;
  final String ?title;
  final String backdropPath;
  //final List<int> genreIds;
  final String ?overview;
  final double ?voteAverage;
  final String ?releaseDate;

  const Movie({
  required this.id,
  required this.title,
  required this.backdropPath,
  //required this.genreIds,
  required this.overview,
  required this.voteAverage,
  required this.releaseDate, required List<int> genreIds,
  });

  @override
  List<Object?> get props =>
 // {
    //return
    [


  //id,
  //title,
  backdropPath,
  //genreIds,
  //overview,
  //voteAverage,
  //releaseDate,
  ];
  //}
  }
