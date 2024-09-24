

import 'package:equatable/equatable.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {

final List<Movie>nowPlayingMovies;
final RequestState  nowPlayingState;
final String message;

 const MoviesState({  this.nowPlayingMovies=const[],    this.nowPlayingState=RequestState.loaded,    this.message=''});
  @override
  // TODO: implement props
  List<Object?> get props => [nowPlayingMovies,nowPlayingState,message ];
}