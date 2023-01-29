import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nontonin/core/errors/exception.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:nontonin/core/errors/success.dart';
import 'package:nontonin/core/utils/internet_connection_checker.dart';
import 'package:nontonin/features/home/data/datasources/home_local_datasource.dart';
import 'package:nontonin/features/home/data/datasources/home_remote_datasourece.dart';
import 'package:nontonin/features/home/data/models/anime_response.dart';
import 'package:nontonin/features/home/data/models/drama_response.dart';
import 'package:nontonin/features/home/data/models/movie_response.dart';
import 'package:nontonin/features/home/data/models/series_response.dart';
import 'package:nontonin/features/home/data/repository/home_repository_impl.dart';

import 'home_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HomeLocalDataSource>(),
  MockSpec<HomeRemoteDataSource>(),
  MockSpec<InternetConnection>(),
])
void main() {
  late MockHomeLocalDataSource localDataSource;
  late MockHomeRemoteDataSource remoteDataSource;
  late InternetConnection internetConnection;
  late HomeRepositoryImpl repositoryImpl;

  setUp(() {
    localDataSource = MockHomeLocalDataSource();
    remoteDataSource = MockHomeRemoteDataSource();
    internetConnection = MockInternetConnection();

    repositoryImpl = HomeRepositoryImpl(
      internetConnection: internetConnection,
      localDataSource: localDataSource,
      remoteDataSource: remoteDataSource,
    );
  });

  group("Get Newest Animes Device Online", () {
    final mockAnimeResponse = [AnimeResponse(id: "2121")];
    final mockAnimeEntity =
        mockAnimeResponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => true);
    });
    test("Should return correct anime entity and add data to cache", () async {
      //arrange
      when(remoteDataSource.getNewestAnime())
          .thenAnswer((_) async => mockAnimeResponse);

      when(localDataSource.writeNewestAnime(mockAnimeResponse))
          .thenAnswer((_) async => WriteSuccess());

      //act
      final response = await repositoryImpl.getNewestAnimes();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(remoteDataSource.getNewestAnime());
      verify(localDataSource.writeNewestAnime(mockAnimeResponse));
      expect(result, mockAnimeEntity);
    });

    test("Should return server failure when get data fail", () async {
      //arrange
      when(remoteDataSource.getNewestAnime()).thenThrow(ServerException());

      //act
      final response = await repositoryImpl.getNewestAnimes();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(remoteDataSource.getNewestAnime());
      expect(result, ServerFailure());
    });
  });

  group("Get Newest Animes Device Offline", () {
    final mockAnimeResponse = [AnimeResponse(id: "2121")];
    final mockAnimeEntity =
        mockAnimeResponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => false);
    });

    test("Should return correct anime entity from cache", () async {
      //arrange
      when(localDataSource.getNewestAnime())
          .thenAnswer((_) async => mockAnimeResponse);

      //act
      final response = await repositoryImpl.getNewestAnimes();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(localDataSource.getNewestAnime());
      expect(result, mockAnimeEntity);
    });

    test("Should return cache failure when get data fail", () async {
      //arrange
      when(localDataSource.getNewestAnime()).thenThrow(CacheException());

      //act
      final response = await repositoryImpl.getNewestAnimes();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(localDataSource.getNewestAnime());
      expect(result, CacheFailure());
    });
  });

  group("Get Newest Dramas Device Online", () {
    final mockDramaResponse = [DramaResponse(id: "2121")];
    final mockDramaEntity =
        mockDramaResponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => true);
    });
    test("Should return correct drama entity and add data to cache", () async {
      //arrange
      when(remoteDataSource.getNewestDrama())
          .thenAnswer((_) async => mockDramaResponse);

      when(localDataSource.writeNewestDrama(mockDramaResponse))
          .thenAnswer((_) async => WriteSuccess());

      //act
      final response = await repositoryImpl.getNewestDramas();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(remoteDataSource.getNewestDrama());
      verify(localDataSource.writeNewestDrama(mockDramaResponse));
      expect(result, mockDramaEntity);
    });

    test("Should return server failure when get data fail", () async {
      //arrange
      when(remoteDataSource.getNewestDrama()).thenThrow(ServerException());

      //act
      final response = await repositoryImpl.getNewestDramas();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(remoteDataSource.getNewestDrama());
      expect(result, ServerFailure());
    });
  });

  group("Get Newest Dramas Device Offline", () {
    final mockDramaResponse = [DramaResponse(id: "2121")];
    final mockDramaEntity =
        mockDramaResponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => false);
    });

    test("Should return correct drama entity from cache", () async {
      //arrange
      when(localDataSource.getNewestDrama())
          .thenAnswer((_) async => mockDramaResponse);

      //act
      final response = await repositoryImpl.getNewestDramas();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(localDataSource.getNewestDrama());
      expect(result, mockDramaEntity);
    });

    test("Should return cache failure when get data fail", () async {
      //arrange
      when(localDataSource.getNewestDrama()).thenThrow(CacheException());

      //act
      final response = await repositoryImpl.getNewestDramas();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(localDataSource.getNewestDrama());
      expect(result, CacheFailure());
    });
  });

  group("Get Newest Movies Device Online", () {
    final mockMovieReponse = [MovieResponse(title: "2121")];
    final mockMovieEntity =
        mockMovieReponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => true);
    });
    test("Should return correct movie entity and add data to cache", () async {
      //arrange
      when(remoteDataSource.getNewestMovie())
          .thenAnswer((_) async => mockMovieReponse);

      when(localDataSource.writeNewestMovie(mockMovieReponse))
          .thenAnswer((_) async => WriteSuccess());

      //act
      final response = await repositoryImpl.getNewestMovies();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(remoteDataSource.getNewestMovie());
      verify(localDataSource.writeNewestMovie(mockMovieReponse));
      expect(result, mockMovieEntity);
    });

    test("Should return server failure when get data fail", () async {
      //arrange
      when(remoteDataSource.getNewestMovie()).thenThrow(ServerException());

      //act
      final response = await repositoryImpl.getNewestMovies();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(remoteDataSource.getNewestMovie());
      expect(result, ServerFailure());
    });
  });

  group("Get Newest Movies Device Offline", () {
    final mockMovieReponse = [MovieResponse(title: "2121")];
    final mockMovieEntity =
        mockMovieReponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => false);
    });

    test("Should return correct movie entity from cache", () async {
      //arrange
      when(localDataSource.getNewestMovie())
          .thenAnswer((_) async => mockMovieReponse);

      //act
      final response = await repositoryImpl.getNewestMovies();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(localDataSource.getNewestMovie());
      expect(result, mockMovieEntity);
    });

    test("Should return cache failure when get data fail", () async {
      //arrange
      when(localDataSource.getNewestMovie()).thenThrow(CacheException());

      //act
      final response = await repositoryImpl.getNewestMovies();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(localDataSource.getNewestMovie());
      expect(result, CacheFailure());
    });
  });

  group("Get Newest Series Device Online", () {
    final mockSeriesReponse = [SeriesResponse(id: "2121")];
    final mockSeriesEntity =
        mockSeriesReponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => true);
    });
    test("Should return correct series entity and add data to cache", () async {
      //arrange
      when(remoteDataSource.getNewestSeries())
          .thenAnswer((_) async => mockSeriesReponse);

      when(localDataSource.writeNewestSeries(mockSeriesReponse))
          .thenAnswer((_) async => WriteSuccess());

      //act
      final response = await repositoryImpl.getNewestSeries();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(remoteDataSource.getNewestSeries());
      verify(localDataSource.writeNewestSeries(mockSeriesReponse));
      expect(result, mockSeriesEntity);
    });

    test("Should return server failure when get data fail", () async {
      //arrange
      when(remoteDataSource.getNewestSeries()).thenThrow(ServerException());

      //act
      final response = await repositoryImpl.getNewestSeries();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(remoteDataSource.getNewestSeries());
      expect(result, ServerFailure());
    });
  });

  group("Get Newest Series Device Offline", () {
    final mockSeriesReponse = [SeriesResponse(id: "2121")];
    final mockSeriesEntity =
        mockSeriesReponse.map(((e) => e.toEntity())).toList();

    setUp(() {
      when(internetConnection.hasConnection()).thenAnswer((_) async => false);
    });

    test("Should return correct series entity from cache", () async {
      //arrange
      when(localDataSource.getNewestSeries())
          .thenAnswer((_) async => mockSeriesReponse);

      //act
      final response = await repositoryImpl.getNewestSeries();
      final result = response.fold((l) => null, (r) => r);

      //assert
      verify(localDataSource.getNewestSeries());
      expect(result, mockSeriesEntity);
    });

    test("Should return cache failure when get data fail", () async {
      //arrange
      when(localDataSource.getNewestSeries()).thenThrow(CacheException());

      //act
      final response = await repositoryImpl.getNewestSeries();
      final result = response.fold((l) => l, (r) => null);

      //assert
      verify(localDataSource.getNewestSeries());
      expect(result, CacheFailure());
    });
  });
}
