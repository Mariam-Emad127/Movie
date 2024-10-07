import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movie/presentation/controller/movie_details_event.dart';
import 'package:movie/presentation/controller/movie_details_state.dart';
 
//part 'movie_details_event.dart';
//part 'movie_details_state.dart';
class MovieDetailsBloc extends Bloc<MovieDetailEvent, MoviesDetailsState> { 
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  
  MovieDetailsBloc( this.getMovieDetailsUseCase): super(const MoviesDetailsState()){
on<GetMovieDetailsEvent>(_getMovieDetails);

  }

FutureOr<dynamic>_getMovieDetails(GetMovieDetailsEvent event,Emitter <MoviesDetailsState> emit)async{
 
final result=await getMovieDetailsUseCase.excute(event.id);
result.fold(
  (l) => emit(state.copyWith(movieDetailsState:RequestState.error,movieDetailsMessage:l.message)),
 (r) => emit(state.copyWith( movieDetail: r, movieDetailsState: RequestState.loaded,)));


}


}