import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/domain/entities/movie.dart';

import '../repository/base_movies_repository.dart';

class GetPopularMoviesUseCase   {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);
  Future <Either<Failure, List<Movie>>> excute( ) async {
     return await baseMoviesRepository.getPopularMovies();
   }
}