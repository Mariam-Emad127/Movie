import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
import 'package:movie/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:equatable/equatable.dart';
  
part 'movie_details_event.dart';
part  'movie_details_state.dart';
class MovieDetailsBloc extends Bloc<MovieDetailEvent, MoviesDetailsState> { 
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  
  MovieDetailsBloc( this.getMovieDetailsUseCase): super(const MoviesDetailsState()){
on<GetMovieDetailsEvent>(_getMovieDetails);

  }

FutureOr<void>_getMovieDetails(GetMovieDetailsEvent event,Emitter <MoviesDetailsState> emit)async{
 
final result=await getMovieDetailsUseCase.execute(  event.id);
print(result);
//final result=await getMovieDetailsUseCase.excute(event.id);
/*
result.fold(
  (l) => emit(state.copyWith(movieDetailsState:RequestState.error,movieDetailsMessage:l.message)),
 (r) => emit(state.copyWith( movieDetail: r, movieDetailsState: RequestState.loaded,)));
*/

    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsState: RequestState.error,
        movieDetailsMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
   print(result);
  }




}


//}