import '../repository/base_movies_repository.dart';

class GetPopularMoviesUseCase   {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  // @override
  // Future   List<Movie>> call(NoParameters parameters) async {
  //   return await baseMoviesRepository.getPopularMovies();
  // }
}