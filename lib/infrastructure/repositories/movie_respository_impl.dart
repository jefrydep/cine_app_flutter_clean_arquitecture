import 'package:app_cine_world/domain/datasources/movies_datasource.dart';
import 'package:app_cine_world/domain/entities/movie.dart';
import 'package:app_cine_world/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository{
  final MoviesDataSource dataSource;

  MovieRepositoryImpl(this.dataSource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1})async {
    return dataSource.getNowPlaying(page: page);
    
  }

}