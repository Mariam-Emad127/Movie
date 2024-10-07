

import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
//import 'package:movie/core/usecase/base_usecase.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase 
//extends BaseUseCase<MovieDetail>
{ 
 final  BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase( this.baseMoviesRepository);
  Future<Either<Failure, MovieDetail>> excute(int p ) async{
 return await baseMoviesRepository.getMovieDetails();
  }

}