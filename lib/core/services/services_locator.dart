import 'package:get_it/get_it.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/data/repository/movies_repository.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';

final sl = GetIt.instance;
class ServicesLocator {

void init(){


sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource(),);
sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
}


}