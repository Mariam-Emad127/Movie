part of 'movie_details_bloc.dart';

 

class MoviesDetailsState extends Equatable {

 final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
   final List<Recommendation> recommendation;
  final  RequestState recommendationState;
  final  String recommendationMessage;
  const MoviesDetailsState( {this.movieDetail, 
   this.movieDetailsState=RequestState.loading , this.movieDetailsMessage="",
   this.recommendation=const[], this.recommendationState=RequestState.loading,
   this.recommendationMessage="",});
 


  MoviesDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MoviesDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }
 
  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
        
        
        ];
  
  
  }