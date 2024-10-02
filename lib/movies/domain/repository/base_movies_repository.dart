
import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';

import '../entities/movie.dart';

abstract class BaseMoviesRepository {
 Future< Either<Failure, List<Movie>>> getNowPlayingMovies();
 
  Future<  Either<Failure, List<Movie>>>  getPopularMovies();

  Future<  Either<Failure, List<Movie>>> getTopRatedMovies();


}