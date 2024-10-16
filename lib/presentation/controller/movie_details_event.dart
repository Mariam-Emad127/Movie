part of 'movie_details_bloc.dart';

 
abstract class MovieDetailEvent extends Equatable{

const MovieDetailEvent();

}
class  GetMovieDetailsEvent extends MovieDetailEvent{
final int id;

  GetMovieDetailsEvent(  this.id);

  @override
   List<Object?> get props =>  [id];
} 

class GetMovieRecommendationEvent extends MovieDetailEvent {
  final int id;

  const GetMovieRecommendationEvent(this.id);

  @override
  List<Object> get props => [id];
}