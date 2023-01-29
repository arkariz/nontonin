import 'package:nontonin/features/home/data/models/anime_response.dart';
import 'package:nontonin/features/home/data/models/drama_response.dart';
import 'package:nontonin/features/home/data/models/movie_response.dart';
import 'package:nontonin/features/home/data/models/series_response.dart';

abstract class HomeRemoteDataSource {
  Future<List<AnimeResponse>> getNewestAnime();
  Future<List<DramaResponse>> getNewestDrama();
  Future<List<MovieResponse>> getNewestMovie();
  Future<List<SeriesResponse>> getNewestSeries();
}
