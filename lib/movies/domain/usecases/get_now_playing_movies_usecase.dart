import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/domain/entities/movie.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

 //Future<List<Movie>>
 Future<List<Movie>>excute()async{
//  Future<Either<Failure, List<Movie>>>excute()async{

  return await baseMoviesRepository.getNowPlayingMovies();
}
}