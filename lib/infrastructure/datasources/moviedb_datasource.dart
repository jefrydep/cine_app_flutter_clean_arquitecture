import 'package:app_cine_world/config/constants/environment.dart';
import 'package:app_cine_world/domain/datasources/movies_datasource.dart';
import 'package:app_cine_world/domain/entities/movie.dart';
import 'package:app_cine_world/infrastructure/mappers/movie_mapper.dart';
import 'package:app_cine_world/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDbDataSource extends MoviesDataSource{
    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key':Environment.movieDbKey,
        'language':'es-MX'
      }
    ));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final  movieDbResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies= movieDbResponse.results
    .where((moviedb) => moviedb.posterPath != 'no-poster')
    .map((moviedb) => MovieMapper.movieDBToEntity(moviedb)).toList();


    return movies;
    
  }

}