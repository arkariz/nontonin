import 'package:dartz/dartz.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';

class GetNewestSeriessUsecase {
  final HomeRepository _homeRepository;

  GetNewestSeriessUsecase(this._homeRepository);

  Future<Either<Failure, List<SeriesEntity>>> call() {
    return _homeRepository.getNewestSeries();
  }
}
