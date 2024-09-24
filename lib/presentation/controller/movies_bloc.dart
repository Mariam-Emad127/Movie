 
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/data/repository/movies_repository.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movie/presentation/controller/movies_event.dart';
import 'package:movie/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
//final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
//final GetPopularMoviesUseCase getPopularMoviesUseCase;

  //nowPlayingMovies: [], nowPlayingState: null
  MoviesBloc(
this.getNowPlayingMoviesUseCase,
//this.getPopularMoviesUseCase,
//this.getTopRatedMoviesUseCase

  ) : super(const MoviesState()){
on<GetNowPlayingMoviesEvent>((event, emit)async {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource=MovieRemoteDataSource();
  BaseMoviesRepository baseMoviesRepository=MoviesRepository(baseMovieRemoteDataSource);
final result=await GetNowPlayingMoviesUseCase(baseMoviesRepository).excute();
print(result);
},
);

  }
}