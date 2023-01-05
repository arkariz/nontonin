import 'package:dartz/dartz.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/anime_entity.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<AnimeEntity>>> getNewestAnimes();
  Future<Either<Failure, List<DramaEntity>>> getNewestDramas();
  Future<Either<Failure, List<MovieEntity>>> getNewestMovies();
  Future<Either<Failure, List<SeriesEntity>>> getNewestSeries();
}
