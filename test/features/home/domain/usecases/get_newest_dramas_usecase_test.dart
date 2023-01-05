import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';
import 'package:nontonin/features/home/domain/usecases/get_newest_dramas_usecase.dart';

import 'mock_home_repository.dart';

void main() {
  late MockHomeRepository repository;
  late GetNewestDramasUsecase usecase;

  final tDramas = [
    const DramaEntity(
      id: "id",
      title: "title",
      poster: "poster",
      genre: "genre",
      status: "status",
      type: "type",
      totalEpisode: "totalEpisode",
      sub: "sub",
      playerUrl: "playerUrl",
    ),
  ];

  setUp(() {
    repository = MockHomeRepository();
    usecase = GetNewestDramasUsecase(repository);
  });

  test("Should get newest dramas from repository", () async {
    //arrange
    when(repository.getNewestDramas()).thenAnswer((_) async => Right(tDramas));

    //act
    final result = await usecase();

    //assert
    expect(result, Right(tDramas));
    verify(repository.getNewestDramas());
    verifyNoMoreInteractions(repository);
  });

  test("Should get Failure from repository", () async {
    //arrange
    when(repository.getNewestDramas())
        .thenAnswer((_) async => Left(ServerFailure()));

    //act
    final result = await usecase();

    //assert
    expect(result, equals(Left(ServerFailure())));
    verify(repository.getNewestDramas());
    verifyNoMoreInteractions(repository);
  });
}
