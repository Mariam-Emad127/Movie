
import 'package:dartz/dartz.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/domain/entities/movie.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
 import '../../domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
   final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository(this.baseMovieRemoteDataSource  );
 
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
  
 

 

   @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result as List<Movie>);
    } on ServerException catch (failure) {
      // return Left(ServerFailure(failure.error))
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
/*
//final int imdbId;
  
  @override
  
  Future<Either<Failure, MovieDetail>> getMovieDetails(id) async{
 final result = await baseMovieRemoteDataSource.getMovieDetails(id);
    try {
      return Right(result );
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }


*/

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetails
 (imdbId) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(imdbId);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  }
