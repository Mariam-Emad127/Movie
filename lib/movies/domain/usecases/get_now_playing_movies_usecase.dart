import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/core/usecase/base_usecase.dart';
import 'package:movie/movies/domain/entities/movie.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

//class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters>{
  class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie> >{

  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

 
 @override
  Future<Either<Failure, List<Movie>>>call( )async{

  return await baseMoviesRepository.getNowPlayingMovies();
}
}