import 'package:app_cine_world/domain/entities/movie.dart';

abstract class MoviesDataSource{
 Future<List<Movie>> getNowPlaying({int page = 1});

}