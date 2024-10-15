import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/entities/movie_detail.dart';
import 'package:movie/movies/domain/entities/recommondation.dart';
import 'package:movie/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/movies/domain/usecases/get_recommendation_usecase.dart';
  
part 'movie_details_event.dart';
part  'movie_details_state.dart';
class MovieDetailsBloc extends Bloc<MovieDetailEvent, MoviesDetailsState> { 
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
  MovieDetailsBloc( this.getMovieDetailsUseCase, this.getRecommendationUseCase): super(const MoviesDetailsState()){
on<GetMovieDetailsEvent>(_getMovieDetails);
on<GetMovieRecommendationEvent>(_getRecommendation);
  }

FutureOr<void>_getMovieDetails(GetMovieDetailsEvent event,Emitter <MoviesDetailsState> emit)async{
 
final result=await getMovieDetailsUseCase.execute(  event.id);
 
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
 

FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event,
      Emitter<MoviesDetailsState> emit) async {
    final result = await getRecommendationUseCase.excute(event.id);

    result.fold(
      (l) => emit(state.copyWith(
        recommendationState: RequestState.error,
        recommendationMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          recommendation: r,
          recommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
//}


