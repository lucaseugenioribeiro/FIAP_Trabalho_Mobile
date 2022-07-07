
import 'package:fiap_mobile_trabalho/domain/entities/movie_entity.dart';

abstract class FetchMovies {
  Future<List<MovieEntity>> execute();
}