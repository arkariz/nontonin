import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/anime_entity.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';
import 'package:nontonin/features/home/domain/usecases/get_newest_animes_usecase.dart';

import 'mock_home_repository.dart';

@GenerateNiceMocks([MockSpec<HomeRepository>()])
void main() {
  late MockHomeRepository repository;
  late GetNewestAnimesUsecase usecase;

  final tAnimes = [
    const AnimeEntity(
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
    usecase = GetNewestAnimesUsecase(repository);
  });

  test("Should get newest animes from repository", () async {
    //arrange
    when(repository.getNewestAnimes()).thenAnswer((_) async => Right(tAnimes));

    // act
    final result = await usecase();

    //assert
    expect(result, Right(tAnimes));
    verify(repository.getNewestAnimes());
    verifyNoMoreInteractions(repository);
  });

  test("Should get failure from repository", () async {
    //arrange
    when(repository.getNewestAnimes())
        .thenAnswer((_) async => Left(ServerFailure()));

    //act
    final result = await usecase();

    //assert
    expect(result, equals(Left(ServerFailure())));
    verify(repository.getNewestAnimes());
    verifyNoMoreInteractions(repository);
  });
}
