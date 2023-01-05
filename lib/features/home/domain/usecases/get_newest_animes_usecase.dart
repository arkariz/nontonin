import 'package:dartz/dartz.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/anime_entity.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';

class GetNewestAnimesUsecase {
  GetNewestAnimesUsecase(this._homeRepository);
  final HomeRepository _homeRepository;

  Future<Either<Failure, List<AnimeEntity>>> call() {
    return _homeRepository.getNewestAnimes();
  }
}
