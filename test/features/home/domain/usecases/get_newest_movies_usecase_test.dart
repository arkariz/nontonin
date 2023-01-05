import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';
import 'package:nontonin/features/home/domain/usecases/get_newest_movies_usecase.dart';

import 'mock_home_repository.dart';

void main() {
  late MockHomeRepository repository;
  late GetNewestMoviesUsecase usecase;

  final tMovies = [
    const MovieEntity(
      title: "title",
      year: "year",
      imdb: "imdb",
      poster: "poster",
      genre: "genre",
      runtime: "runtime",
      director: "director",
      country: "country",
      rating: "rating",
      votes: "votes",
      sub: "sub",
      quality: "quality",
    )
  ];

  setUp(() {
    repository = MockHomeRepository();
    usecase = GetNewestMoviesUsecase(repository);
  });

  test("Should get newest movies from repository", () async {
    //arrange
    when(repository.getNewestMovies()).thenAnswer((_) async => Right(tMovies));

    //act
    final result = await usecase();

    //assert
    expect(result, Right(tMovies));
    verify(repository.getNewestMovies());
    verifyNoMoreInteractions(repository);
  });

  test("Should get failure from repository", () async {
    //arrange
    when(repository.getNewestMovies())
        .thenAnswer((_) async => Left(ServerFailure()));

    //act
    final result = await usecase();

    //assert
    expect(result, Left(ServerFailure()));
    verify(repository.getNewestMovies());
    verifyNoMoreInteractions(repository);
  });
}
