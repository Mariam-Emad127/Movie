import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/core/usecase/base_usecase.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
/*

class GetMovieDetailsUseCase 

//extends BaseUseCase<MovieDetail>
{ 
 final  BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase( this.baseMoviesRepository);
  Future<Either<Failure, MovieDetail>> excute(int id ) async{
 return await baseMoviesRepository.getMovieDetails(id);
  }

}
*/

class GetMovieDetailsUseCase
    //extends BaseUseCase<MovieDetail, MovieDetailsParameters> 
    {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  
    
  Future<Either<Failure, MovieDetail>> execute( parameters) async {
     
    return await baseMoviesRepository.getMovieDetails( parameters );
    
  }
}
 
/*
class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
*/