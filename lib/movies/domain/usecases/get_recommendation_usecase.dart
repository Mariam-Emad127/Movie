import 'package:dartz/dartz.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/domain/entities/recommondation.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

class GetRecommendationUseCase{ 
 final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);
    Future<Either<Failure, List<Recommendation>>> excute(id)async {
 
 return await baseMoviesRepository.getRecommendation(id);
 


  }
}