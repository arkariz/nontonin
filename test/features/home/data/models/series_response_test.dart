import 'package:flutter_test/flutter_test.dart';
import 'package:nontonin/features/home/data/models/series_response.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';

void main() {
  final jsonMatcher = {
    "id": "368941",
    "imdb": "tt10278918",
    "title": "Willow - Season 1",
    "poster": "",
    "status": "Ongoing",
    "type": "Series",
    "total_episode": "7",
    "sub": "Indonesia",
    "detail": "https://api.gdriveplayer.us/v2/series/imdb/tt10278918/season1"
  };

  final seriesMatcher = SeriesResponse(
    id: "368941",
    imdb: "tt10278918",
    title: "Willow - Season 1",
    poster: "",
    status: "Ongoing",
    type: "Series",
    totalEpisode: "7",
    sub: "Indonesia",
    detail: "https://api.gdriveplayer.us/v2/series/imdb/tt10278918/season1",
  );

  const entityMatcher = SeriesEntity(
    id: "368941",
    imdb: "tt10278918",
    title: "Willow - Season 1",
    poster: "",
    status: "Ongoing",
    type: "Series",
    totalEpisode: "7",
    sub: "Indonesia",
    detail: "https://api.gdriveplayer.us/v2/series/imdb/tt10278918/season1",
  );

  const entityMatcherDefault = SeriesEntity(
    id: "368941",
    imdb: "-",
    title: "-",
    poster: "-",
    status: "-",
    type: "-",
    totalEpisode: "-",
    sub: "-",
    detail: "-",
  );

  final jsonMatcherNull = {
    "id": "368941",
    "imdb": null,
    "title": null,
    "poster": null,
    "status": null,
    "type": null,
    "total_episode": null,
    "sub": null,
    "detail": null,
  };

  final seriesMatcherNull = SeriesResponse(id: "368941");

  group("From json", () {
    test("Should return correct SeriesResponse", () {
      //arrange

      //act
      final result = SeriesResponse.fromJson(jsonMatcher);

      //assert
      expect(result, seriesMatcher);
    });

    test("Should return null value if field null", () {
      //arrange

      //act
      final result = SeriesResponse.fromJson(jsonMatcherNull);

      //assert
      expect(result, seriesMatcherNull);
      expect(result.title, result.title);
    });
  });

  group("To json", () {
    test("Should return correct json", () {
      //arrange

      //act
      final result = seriesMatcher.toJson();

      //assert
      expect(result, jsonMatcher);
    });

    test("Should return correct json if field null", () {
      //arrange

      //act
      final result = seriesMatcherNull.toJson();

      //assert
      expect(result, jsonMatcherNull);
    });
  });

  group("To entity", () {
    test("Should return correct Anime entity", () {
      //arrange

      //act
      final result = seriesMatcher.toEntity();

      //assert
      expect(result, entityMatcher);
    });

    test("Should return default value if field null", () {
      //arrange

      //act
      final result = seriesMatcherNull.toEntity();

      //assert
      expect(result, entityMatcherDefault);
      expect(result.title, entityMatcherDefault.title);
    });
  });
}
