import 'package:equatable/equatable.dart';
//part 'movie_details_bloc.dart';
abstract class MovieDetailEvent extends Equatable{

const MovieDetailEvent();

}
class  GetMovieDetailsEvent extends MovieDetailEvent{
final int id;

  GetMovieDetailsEvent({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props =>  [id];
} 