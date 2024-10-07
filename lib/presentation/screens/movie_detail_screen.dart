import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/services/services_locator.dart';
import 'package:movie/presentation/controller/movie_details_bloc.dart';
import 'package:movie/presentation/controller/movie_details_event.dart';
import 'package:movie/presentation/controller/movie_details_state.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;
  const MovieDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()..add(GetMovieDetailsEvent(id: id)) ,
      child: BlocBuilder<MovieDetailsBloc, MoviesDetailsState>(
        builder: (context, state) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ListView.builder(itemBuilder: (context, index) =>  CachedNetworkImage(imageUrl: index.),)
                
                 
              
              
              
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
