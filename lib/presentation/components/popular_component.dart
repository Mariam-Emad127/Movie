 import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:movie/core/utils/enum.dart';
import 'package:movie/presentation/controller/movies_bloc.dart';
import 'package:movie/presentation/controller/movies_state.dart';
import 'package:shimmer/shimmer.dart';
import '../../core/network/api_constance.dart';
 class PopularComponent extends StatelessWidget {
  const PopularComponent({super.key});

  @override
  /*
  Widget build(BuildContext context) {


    return  BlocBuilder<MoviesBloc,MoviesState>(
    //  buildWhen: (previous, current) =>previous.popularState != current.popularState ,
      builder: (context,state) {
        print(state.popularState);
     switch (state.popularState){
      case RequestState.loading:
      return const SizedBox(
              height: 170.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
            case RequestState.loaded  : 
        return FadeIn(
          duration: const Duration(milliseconds: 500),
       //   child: Column(
         //   children: [
            child:  SizedBox(
              height:170 ,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.popularMovies.length,
                  itemBuilder: (context, index) {
                   // final movie = moviesList[index];
                   final movie=state.popularMovies[index];
                  
                      child: Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            /// TODO : NAVIGATE TO  MOVIE DETAILS
                          },
                          child: ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                            child: CachedNetworkImage(
                              width: 120.0,
                              fit: BoxFit.cover,
                              imageUrl: ApiConstance.imageUrl(movie.backdropPath),
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  height: 170.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                            ),
                          ),
                       
                        ),
                      
                      );
                   
                         
                      
                 
                      
                  }
                
                            ),
            ),
          
          /*
                          ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                     // itemCount: moviesList.length,
                          
                           itemCount:state.popularMovies.length  ,
                          itemBuilder: (context, index) {
                           // final movie = moviesList[index];
                           
                              final movie =state.popularMovies[index];// moviesList[index];
                            return
                            
                             Container(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: InkWell(
                                onTap: () {
                                  /// TODO : NAVIGATE TO  MOVIE DETAILS
                                },
                                child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(8.0)),
                                  child: CachedNetworkImage(
                                    width: 120.0,
                                    fit: BoxFit.cover,
                                    imageUrl: ApiConstance.imageUrl(movie.backdropPath),
                                    placeholder: (context, url) => Shimmer.fromColors(
                                      baseColor: Colors.grey[850]!,
                                      highlightColor: Colors.grey[800]!,
                                      child: Container(
                                        height: 170.0,
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                 
                                  ),
                                ),
                              ),
                            );
                                      },
                                    )
            */     
          
         // ]
           //       )
              
            );
          
          
    
          
        
      
case RequestState.error:
  return const SizedBox(
              height: 170.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
      }
      
      }
     );
  }
 }
 */
 Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      //buildWhen: (previous, current) =>  previous.popularState != current.popularState,
      builder: (context, state) {
        switch (state.popularState) {
          case RequestState.loading:
            return const SizedBox(
              height: 170.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case RequestState.loaded:
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 170.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.popularMovies.length,
                  itemBuilder: (context, index) {
                    final movie = state.popularMovies[index];
                    return Container(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          /// TODO : NAVIGATE TO  MOVIE DETAILS
                        },
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          child: CachedNetworkImage(
                            width: 120.0,
                            fit: BoxFit.cover,
                            imageUrl: ApiConstance.imageUrl(movie.backdropPath),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[850]!,
                              highlightColor: Colors.grey[800]!,
                              child: Container(
                                height: 170.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 170.0,
              child: Center(
              child: CircularProgressIndicator(),
              ),
            );
        }
      },
    );
  }
}
