part of 'movie_details_bloc.dart';

//import 'package:equatable/equatable.dart';

abstract class MovieDetailEvent extends Equatable{

const MovieDetailEvent();

}
class  GetMovieDetailsEvent extends MovieDetailEvent{
final int id;

  GetMovieDetailsEvent(  this.id);

  @override
  // TODO: implement props
  List<Object?> get props =>  [id];
} 