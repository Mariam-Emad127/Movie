import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/services/services_locator.dart';
import 'package:movie/movies/data/%20datasource/movie_remote_data_source.dart';
import 'package:movie/movies/data/repository/movies_repository.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie/presentation/controller/movies_bloc.dart';
import 'package:movie/presentation/controller/movies_event.dart';
import 'package:movie/presentation/controller/movies_state.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
  
    return BlocProvider( create:(BuildContext context) {
  return sl <MoviesBloc>( )..add(GetNowPlayingMoviesEvent());},
      child: BlocBuilder<MoviesBloc,MoviesState>(builder: (context,state){
return Scaffold();

      }
       )
    );  
  }







@override
  void initState() {
_getData();
  }

  void _getData()async{
    BaseMovieRemoteDataSource baseMovieRemoteDataSource=  MovieRemoteDataSource();

BaseMoviesRepository moviesRepository=MoviesRepository(baseMovieRemoteDataSource );
  
  final result =await GetNowPlayingMoviesUseCase(moviesRepository).excute();
  print(result);

  }

}


