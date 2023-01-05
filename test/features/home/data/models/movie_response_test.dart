import 'package:flutter_test/flutter_test.dart';
import 'package:nontonin/features/home/data/models/movie_response.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';

void main() {
  final jsonMatcher = {
    "title": "The Big Doll House",
    "year": "1971",
    "imdb": "tt0066830",
    "poster":
        "https://image.tmdb.org/t/p/w300//oGa0o8MUkpNPfdaWNeXdOHUyrgQ.jpg",
    "genre": "Action, Drama, Thriller",
    "runtime": "95 min",
    "director": "Jack Hill",
    "country": "United States, Philippines",
    "rating": "5.8",
    "votes": "2,818",
    "sub": "English",
    "quality": "HD 720"
  };

  final dramaMatcher = MovieResponse(
    title: "The Big Doll House",
    year: "1971",
    imdb: "tt0066830",
    poster: "https://image.tmdb.org/t/p/w300//oGa0o8MUkpNPfdaWNeXdOHUyrgQ.jpg",
    genre: "Action, Drama, Thriller",
    runtime: "95 min",
    director: "Jack Hill",
    country: "United States, Philippines",
    rating: "5.8",
    votes: "2,818",
    sub: "English",
    quality: "HD 720",
  );

  const entityMatcher = MovieEntity(
    title: "The Big Doll House",
    year: "1971",
    imdb: "tt0066830",
    poster: "https://image.tmdb.org/t/p/w300//oGa0o8MUkpNPfdaWNeXdOHUyrgQ.jpg",
    genre: "Action, Drama, Thriller",
    runtime: "95 min",
    director: "Jack Hill",
    country: "United States, Philippines",
    rating: "5.8",
    votes: "2,818",
    sub: "English",
    quality: "HD 720",
  );

  const entityMatcherDefault = MovieEntity(
    title: "The Big Doll House",
    year: "-",
    imdb: "-",
    poster: "-",
    genre: "-",
    runtime: "-",
    director: "-",
    country: "-",
    rating: "-",
    votes: "-",
    sub: "-",
    quality: "-",
  );

  final jsonMatcherNull = {
    "title": "The Big Doll House",
    "year": null,
    "imdb": null,
    "poster": null,
    "genre": null,
    "runtime": null,
    "director": null,
    "country": null,
    "rating": null,
    "votes": null,
    "sub": null,
    "quality": null,
  };

  final dramaMatcherNull = MovieResponse(title: "The Big Doll House");

  group("From json", () {
    test("Should return correct MovieResponse", () {
      //arrange

      //act
      final result = MovieResponse.fromJson(jsonMatcher);

      //assert
      expect(result, dramaMatcher);
    });

    test("Should return null value if field null", () {
      //arrange

      //act
      final result = MovieResponse.fromJson(jsonMatcherNull);

      //assert
      expect(result, dramaMatcherNull);
      expect(result.title, result.title);
    });
  });

  group("To json", () {
    test("Should return correct json", () {
      //arrange

      //act
      final result = dramaMatcher.toJson();

      //assert
      expect(result, jsonMatcher);
    });

    test("Should return correct json if field null", () {
      //arrange

      //act
      final result = dramaMatcherNull.toJson();

      //assert
      expect(result, jsonMatcherNull);
    });
  });

  group("To entity", () {
    test("Should return correct Anime entity", () {
      //arrange

      //act
      final result = dramaMatcher.toEntity();

      //assert
      expect(result, entityMatcher);
    });

    test("Should return default value if field null", () {
      //arrange

      //act
      final result = dramaMatcherNull.toEntity();

      //assert
      expect(result, entityMatcherDefault);
      expect(result.title, entityMatcherDefault.title);
    });
  });
}
