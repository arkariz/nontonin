import 'package:dartz/dartz.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';

class GetNewestDramasUsecase {
  final HomeRepository _homeRepository;

  GetNewestDramasUsecase(this._homeRepository);

  Future<Either<Failure, List<DramaEntity>>> call() {
    return _homeRepository.getNewestDramas();
  }
}
