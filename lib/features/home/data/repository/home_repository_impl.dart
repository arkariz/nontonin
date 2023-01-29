import 'package:nontonin/core/errors/exception.dart';
import 'package:nontonin/core/utils/internet_connection_checker.dart';
import 'package:nontonin/features/home/data/datasources/home_local_datasource.dart';
import 'package:nontonin/features/home/data/datasources/home_remote_datasourece.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';
import 'package:nontonin/features/home/domain/entity/anime_entity.dart';
import 'package:nontonin/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nontonin/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;
  final InternetConnection internetConnection;

  HomeRepositoryImpl({
    required this.internetConnection,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<AnimeEntity>>> getNewestAnimes() async {
    final hasConnection = await internetConnection.hasConnection();

    if (hasConnection) {
      try {
        final response = await remoteDataSource.getNewestAnime();
        localDataSource.writeNewestAnime(response);

        final result = response.map((e) => e.toEntity()).toList();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final response = await localDataSource.getNewestAnime();
        final result = response.map((e) => e.toEntity()).toList();

        return Right(result);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<DramaEntity>>> getNewestDramas() async {
    final hasConnection = await internetConnection.hasConnection();

    if (hasConnection) {
      try {
        final respose = await remoteDataSource.getNewestDrama();
        localDataSource.writeNewestDrama(respose);

        final result = respose.map((e) => e.toEntity()).toList();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final response = await localDataSource.getNewestDrama();
        final result = response.map((e) => e.toEntity()).toList();

        return Right(result);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getNewestMovies() async {
    final hasConnection = await internetConnection.hasConnection();

    if (hasConnection) {
      try {
        final respose = await remoteDataSource.getNewestMovie();
        localDataSource.writeNewestMovie(respose);

        final result = respose.map((e) => e.toEntity()).toList();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final response = await localDataSource.getNewestMovie();
        final result = response.map((e) => e.toEntity()).toList();

        return Right(result);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<SeriesEntity>>> getNewestSeries() async {
    final hasConnection = await internetConnection.hasConnection();

    if (hasConnection) {
      try {
        final respose = await remoteDataSource.getNewestSeries();
        localDataSource.writeNewestSeries(respose);

        final result = respose.map((e) => e.toEntity()).toList();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final response = await localDataSource.getNewestSeries();
        final result = response.map((e) => e.toEntity()).toList();

        return Right(result);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
