import 'package:dartz/dartz.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';

class GetNewestMoviesUsecase {
  final HomeRepository _homeRepository;

  GetNewestMoviesUsecase(this._homeRepository);

  Future<Either<Failure, List<MovieEntity>>> call() {
    return _homeRepository.getNewestMovies();
  }
}
