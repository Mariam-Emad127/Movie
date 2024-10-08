
import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';

import '../entities/movie.dart';

abstract class BaseMoviesRepository {
 Future< Either<Failure, List<Movie>>> getNowPlayingMovies();
 
  Future<  Either<Failure, List<Movie>>>  getPopularMovies();

  Future<  Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetails( );

}