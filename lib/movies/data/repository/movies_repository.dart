
import 'package:dartz/dartz.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/domain/entities/movie.dart';

import '../../domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  //final   BaseMoviesRepository baseMoviesRepository;
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository(this.baseMovieRemoteDataSource );
 
   @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result as List<Movie>);
    } on ServerException catch (failure) {
      // return Left(ServerFailure(failure.error))
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
  
 

 /*
  Future< List<Movie>> getNowPlayingMovies() async {
//  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
     // return Right(result);
return result;
    } catch(e)
    {print( e);
    return result;
    }
    //on ServerException catch (failure) {
      //return Left(ServerFailure(failure.errorMessageModel.statusMessage));}
  }
*/
  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async {
    final result = await baseMovieRemoteDataSource.getPopularMovies ();
    try {
      return Right(result as List<Movie>);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async{
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result as List<Movie>);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}