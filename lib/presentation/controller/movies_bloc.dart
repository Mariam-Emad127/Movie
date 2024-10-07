import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movie/presentation/controller/movies_event.dart';
import 'package:movie/presentation/controller/movies_state.dart';
/*
class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
final GetPopularMoviesUseCase getPopularMoviesUseCase;
//final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;


 
  MoviesBloc(
this.getNowPlayingMoviesUseCase,
this.getPopularMoviesUseCase,
//this.getTopRatedMoviesUseCase

  ) : super(const MoviesState()){

  //  on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    //on<GetPopularMoviesEvent>(_getPopularMovies);

   // on<GetTopRatedMoviesEvent>(_getTopRatedMovies);

  //}
//FutureOr<void>_getNowPlayingMovies    
on<GetNowPlayingMoviesEvent>((event, emit)async {
final result=await getNowPlayingMoviesUseCase.excute();

result.fold((l) =>  emit(state.copyWith(nowPlayingState:RequestState.error,message: l.message )),
 (r) => emit(state.copyWith(nowPlayingMovies: r,nowPlayingState: RequestState.loaded)));
//print(result);
},
);
  
on<GetPopularMoviesEvent>((event, emit)   async {
  final result=await getPopularMoviesUseCase.excute();
print(result);
result.fold((l) => emit(state.copyWith(popularState: RequestState.error,popularMessage: l.message)),
//MoviesState(popularState: RequestState.error,popularMessage: l.message)
 (r) => emit(state.copyWith(popularMovies: r,popularState: RequestState.loaded)));


});
 
  }
}
*/

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
 // final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
   // this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);

    //on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
     final result=await getNowPlayingMoviesUseCase();
    // final result =await getNowPlayingMoviesUseCase( );
    result.fold(
      (l) => emit(state.copyWith(
        nowPlayingState: RequestState.error,
        popularMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          nowPlayingMovies: r,
          nowPlayingState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
   //final result = await getPopularMoviesUseCase(const NoParameters());
     final result=await getPopularMoviesUseCase();
    result.fold(
      (l) => emit(
        state.copyWith(
          popularState: RequestState.error,
          popularMessage: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          popularMovies: r,
          popularState: RequestState.loaded,
        ),
      ),
    );
  }
/*
  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase(const NoParameters());

    result.fold(
      (l) => emit(state.copyWith(
        topRatedMessage: l.message,
        topRatedState: RequestState.error,
      )),
      (r) => emit(
        state.copyWith(
          topRatedMovies: r,
          topRatedState: RequestState.loaded,
        ),
      ),
    );
  }
*/
}