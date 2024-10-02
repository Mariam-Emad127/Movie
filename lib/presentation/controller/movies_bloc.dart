 
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_popular_movies_usecase.dart';
 import 'package:movie/presentation/controller/movies_event.dart';
import 'package:movie/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
final GetPopularMoviesUseCase getPopularMoviesUseCase;
//final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;


  //nowPlayingMovies: [], nowPlayingState: null
  MoviesBloc(
this.getNowPlayingMoviesUseCase,
this.getPopularMoviesUseCase,
//this.getTopRatedMoviesUseCase

  ) : super(const MoviesState()){
on<GetNowPlayingMoviesEvent>((event, emit)async {
 
//final result=await GetNowPlayingMoviesUseCase(baseMoviesRepository).excute();
final result=await getNowPlayingMoviesUseCase.excute();

result.fold((l) =>  emit(MoviesState(nowPlayingState:RequestState.error,message: l.message )),
 (r) => emit(MoviesState(nowPlayingMovies: r,nowPlayingState: RequestState.loaded)));
//print(result);
},
);
  
on<GetPopularMoviesEvent>((event, emit)   async {
  final result=await getPopularMoviesUseCase.excute();

result.fold((l) => emit(MoviesState(popularState: RequestState.error,message: l.message)),
 (r) => emit(MoviesState(popularMovies: r,popularState: RequestState.loaded)));
print(result);

});
 
 

  }
}