import 'package:dio/dio.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/core/network/api_constance.dart';
import 'package:movie/core/network/error_message_model.dart';
import 'package:movie/movies/data/entity/movie_detail.dart';
 

import '../entity/model/movie_model.dart';
abstract class BaseMovieRemoteDataSource {

  Future <List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailModel> getMovieDetails(int movieId );
 
}


class MovieRemoteDataSource extends BaseMovieRemoteDataSource{

  /*
  Future<List<MovieModel>> getNowPlayingMovies()async{
    final response = await Dio().get( "https://api.themoviedb.org/3/movie/now_playing?api_key=adbe0eee9decdf37138e9e5fccac01c2" );
    final data=response.data;
//ApiConstance.nowPlayingMoviesPath
//if(response==200){
 
try{
      List<MovieModel> movie = [];
      for (var item in data["results"]) {
        movie.add(MovieModel.fromJson(item));
      }

    //  return movie;
//  return List<MovieModel>.from((response.data["results"] as List ).map((e) => MovieModel.fromJson  ));
}catch(e){
  print(e);
  
}
  return List<MovieModel>.from((response.data["results"] as List ).map((e) => MovieModel.fromJson));

//}

//else{
//throw ServerException(
//errorMessageModel: ErrorMessageModel.fromjson(response.data));}

}
*/

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {


 List<MovieModel> movie = [];
  final data=response.data;
      for (var item in data["results"]) {
        movie.add(MovieModel.fromJson(item));
      }

      return movie;
   //   return List<MovieModel>.from((response.data["results"] as List).map(  (e) => MovieModel.fromJson(e), ));
    } else {
 return List<MovieModel>.from(( response.data["results"] as List).map((e) => MovieModel.fromJson));    }
  }
  @override
  Future<List<MovieModel>> getPopularMovies() async{
   final response=await Dio().get( ApiConstance.popularMoviesPath);
   /*
   if(response==200){
     return List<MovieModel>.from(( response.data["results"] as List).map((e) => MovieModel.fromJson));
   }
 else {
   throw ServerException(errorMessageModel:ErrorMessageModel.fromjson(response.data)) ;
   }



  }
*/
 if(response.statusCode==200){
 List<MovieModel> movie = [];
  final data=response.data;
      for (var item in data["results"]) {
        movie.add(MovieModel.fromJson(item));
      }

      return movie;
   //  return List<MovieModel>.from((response.data["results"] as List).map(  (e) => MovieModel.fromJson(e), ));
    } else {
     //  throw ServerException(errorMessageModel:ErrorMessageModel.fromjson(response.data)) ;
 return List<MovieModel>.from(( response.data["results"] as List).map((e) => MovieModel.fromJson)); 
 //   }
  }}
  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstance.topRatedMoviesPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List).map(
            (e) => MovieModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson (response.data),
      );
    }
  }
 
  @override
  Future<MovieDetailModel> getMovieDetails (movieId) async {
    final response = await Dio().get(ApiConstance.movieDetailsPath(movieId));

    if (response.statusCode == 200) {

      return MovieDetailModel.fromJson(response.data);
 

    }else {
    throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }




}
