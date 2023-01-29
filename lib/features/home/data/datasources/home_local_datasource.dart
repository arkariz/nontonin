import 'package:nontonin/core/errors/success.dart';
import 'package:nontonin/features/home/data/models/anime_response.dart';
import 'package:nontonin/features/home/data/models/drama_response.dart';
import 'package:nontonin/features/home/data/models/movie_response.dart';
import 'package:nontonin/features/home/data/models/series_response.dart';

abstract class HomeLocalDataSource {
  Future<List<AnimeResponse>> getNewestAnime();
  Future<WriteSuccess> writeNewestAnime(List<AnimeResponse> animes);

  Future<List<DramaResponse>> getNewestDrama();
  Future<WriteSuccess> writeNewestDrama(List<DramaResponse> dramas);

  Future<List<MovieResponse>> getNewestMovie();
  Future<WriteSuccess> writeNewestMovie(List<MovieResponse> movies);

  Future<List<SeriesResponse>> getNewestSeries();
  Future<WriteSuccess> writeNewestSeries(List<SeriesResponse> series);
}
