
import 'package:app_cine_world/infrastructure/datasources/moviedb_datasource.dart';
import 'package:app_cine_world/infrastructure/repositories/movie_respository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// este repositorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDbDataSource());
});