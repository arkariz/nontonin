import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';
import 'package:nontonin/features/home/domain/usecases/get_newest_series_usecase.dart';

import 'mock_home_repository.dart';

void main() {
  late MockHomeRepository repository;
  late GetNewestSeriessUsecase usecase;

  final tSeries = [
    const SeriesEntity(
      id: "id",
      imdb: "imdb",
      title: "title",
      poster: "poster",
      status: "status",
      type: "type",
      totalEpisode: "totalEpisode",
      sub: "sub",
      detail: "detail",
    )
  ];

  setUp(() {
    repository = MockHomeRepository();
    usecase = GetNewestSeriessUsecase(repository);
  });

  test("Should get newest series from repository", () async {
    //arrange
    when(repository.getNewestSeries()).thenAnswer((_) async => Right(tSeries));

    //act
    final result = await usecase();

    //assert
    expect(result, Right(tSeries));
    verify(repository.getNewestSeries());
    verifyNoMoreInteractions(repository);
  });

  test("Should get failure from repository", () async {
    //arrange
    when(repository.getNewestSeries())
        .thenAnswer((_) async => Left(ServerFailure()));

    //act
    final result = await usecase();

    //assert
    expect(result, Left(ServerFailure()));
    verify(repository.getNewestSeries());
    verifyNoMoreInteractions(repository);
  });
}
