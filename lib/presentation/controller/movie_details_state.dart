part of 'movie_details_bloc.dart';

//import 'package:equatable/equatable.dart';
//import 'package:movie/core/utils/enum.dart';
//import 'package:movie/movies/domain/entities/movie_detail.dart';


class MoviesDetailsState extends Equatable {

 final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;

  const MoviesDetailsState({this.movieDetail, this.movieDetailsState=RequestState.loading , this.movieDetailsMessage=""});
 


  MoviesDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    //List<Recommendation>? recommendation,
    //RequestState? recommendationState,
    //String? recommendationMessage,
  }) {
    return MoviesDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      //recommendation: recommendation ?? this.recommendation,
      //recommendationState: recommendationState ?? this.recommendationState,
      //recommendationMessage:
    //      recommendationMessage ?? this.recommendationMessage,
    );
  }
 
  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMessage,];
  
  
  
  }