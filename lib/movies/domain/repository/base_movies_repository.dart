
import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
import 'package:movie/movies/domain/entities/recommondation.dart';
 
import '../entities/movie.dart';

abstract class BaseMoviesRepository {
 Future< Either<Failure, List<Movie>>> getNowPlayingMovies();
 
  Future<  Either<Failure, List<Movie>>>  getPopularMovies();

  Future<  Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetails(int id);
Future<Either<Failure, List<Recommendation>>> getRecommendation(  int id );}
//Future<Either<Failure, MovieDetail>> getMovieDetails( MovieDetailsParameters parameters);
