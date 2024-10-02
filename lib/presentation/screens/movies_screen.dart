 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:movie/core/services/services_locator.dart';
import 'package:movie/presentation/components/now_playing_component..dart';
import 'package:movie/presentation/components/popular_component.dart';
import 'package:movie/presentation/components/top_rated_component.dart';
import 'package:movie/presentation/controller/movies_bloc.dart';
import 'package:movie/presentation/controller/movies_event.dart';
import 'package:movie/presentation/controller/movies_state.dart';
 

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});
 
  Widget build(BuildContext context) {
  

    return  BlocProvider( create:(BuildContext context) {
      return sl <MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        //;},
        //
        ..add(GetPopularMoviesEvent());},
        // ..add(GetTopRatedMoviesEvent());},
      child: BlocBuilder<MoviesBloc,MoviesState>(builder: (context,state){
 


      return Scaffold(
        body: SingleChildScrollView(
        key: const Key('movieScrollView'),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         NowPlayingComponent(),
          
        Container(
        margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        "Popular",
        //style:
        //GoogleFonts.poppins
        style:
        TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        // letterSpacing: 0.15,
        ),
        
        ),
        InkWell(
        onTap: () {
        /// TODO : NAVIGATION TO POPULAR SCREEN
        },
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        children: const [
        Text('See More'),
        Icon(
        Icons.arrow_forward_ios,
        size: 16.0,
        )
        ],
        ),
        ),
        ),
        ],
        ),
        ),
        PopularComponent(),
        Container(
        margin: const EdgeInsets.fromLTRB(
        16.0,
        24.0,
        16.0,
        8.0,
        ),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        "Top Rated",
        style:
        //GoogleFonts.poppins
        TextStyle
        (
        fontSize: 19,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        ),
        ),
        InkWell(
        onTap: () {
        /// TODO : NAVIGATION TO Top Rated Movies Screen
        },
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        children: const [
        Text('See More'),
        Icon(
        Icons.arrow_forward_ios,
        size: 16.0,
        )
        ],
        ),
        ),
        ),
        ],
        ),
        ),
        TopRatedComponent(),
        const SizedBox(height: 50.0),
       
        ],
        ),
        ),
      );              




      }
      )
    
      );
      
  }





/*

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
*/
}


