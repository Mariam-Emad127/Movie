import 'package:equatable/equatable.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {

final List<Movie>nowPlayingMovies;
final RequestState  nowPlayingState;
final String message;
final List<Movie> popularMovies;
final RequestState popularState;
final String popularMessage; 

 const MoviesState( 
 
   {  this.nowPlayingMovies=const[],    this.nowPlayingState=RequestState.loaded,    this.message='',
   this.popularMovies=const[], this.popularState=RequestState.loaded, this.popularMessage=""});

 
MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? message,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
})


{
return MoviesState(
  nowPlayingMovies: nowPlayingMovies??this.nowPlayingMovies,
   nowPlayingState: nowPlayingState ?? this.nowPlayingState,
    message: message ?? this.message,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
);
}

 

  @override
  // TODO: implement props
  List<Object?> get props => [nowPlayingMovies,nowPlayingState,message ];
}
