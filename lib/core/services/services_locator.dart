import 'package:get_it/get_it.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/data/repository/movies_repository.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
import 'package:movie/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movie/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movie/presentation/controller/movie_details_bloc.dart';
import 'package:movie/presentation/controller/movies_bloc.dart';

//final sl = GetIt.instance;
GetIt sl = GetIt.instance;

class ServicesLocator {

void init(){
//
sl.registerFactory(() => MoviesBloc(sl(),sl(),sl() ));
sl.registerFactory(()=>MovieDetailsBloc(sl(),sl()));
sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource(),);
sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl() ));
sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));

sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
//sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

}


}