import 'package:flutter_test/flutter_test.dart';
import 'package:nontonin/features/home/data/models/drama_response.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';

void main() {
  final jsonMatcher = {
    "id": "330357",
    "title": "Koori Zokusei Danshi to Cool na Douryou Joshi",
    "poster":
        "https://gogocdn.net/cover/koori-zokusei-danshi-to-cool-na-douryou-joshi-1672330793.png",
    "genre": "Adult Cast, Comedy, Fantasy, Romance, Workplace",
    "status": "Ongoing",
    "type": "Winter 2023 Anime",
    "total_episode": "1",
    "sub": "Indonesia",
    "player_url":
        "https://database.gdriveplayer.us/player.php?type=anime&id=330357&episode={insert 1 - 1}"
  };

  final dramaMatcher = DramaResponse(
      id: "330357",
      title: "Koori Zokusei Danshi to Cool na Douryou Joshi",
      poster:
          "https://gogocdn.net/cover/koori-zokusei-danshi-to-cool-na-douryou-joshi-1672330793.png",
      genre: "Adult Cast, Comedy, Fantasy, Romance, Workplace",
      status: "Ongoing",
      type: "Winter 2023 Anime",
      totalEpisode: "1",
      sub: "Indonesia",
      playerUrl:
          "https://database.gdriveplayer.us/player.php?type=anime&id=330357&episode={insert 1 - 1}");

  const entityMatcher = DramaEntity(
    id: "330357",
    title: "Koori Zokusei Danshi to Cool na Douryou Joshi",
    poster:
        "https://gogocdn.net/cover/koori-zokusei-danshi-to-cool-na-douryou-joshi-1672330793.png",
    genre: "Adult Cast, Comedy, Fantasy, Romance, Workplace",
    status: "Ongoing",
    type: "Winter 2023 Anime",
    totalEpisode: "1",
    sub: "Indonesia",
    playerUrl:
        "https://database.gdriveplayer.us/player.php?type=anime&id=330357&episode={insert 1 - 1}",
  );

  const entityMatcherDefault = DramaEntity(
    id: "330357",
    title: "-",
    poster: "-",
    genre: "-",
    status: "-",
    type: "-",
    totalEpisode: "-",
    sub: "-",
    playerUrl: "-",
  );

  final jsonMatcherNull = {
    "id": "330357",
    "title": null,
    "poster": null,
    "genre": null,
    "status": null,
    "type": null,
    "total_episode": null,
    "sub": null,
    "player_url": null,
  };

  final dramaMatcherNull = DramaResponse(id: "330357");

  group("From json", () {
    test("Should return correct DramaResponse", () {
      //arrange

      //act
      final result = DramaResponse.fromJson(jsonMatcher);

      //assert
      expect(result, dramaMatcher);
    });

    test("Should return null value if field null", () {
      //arrange

      //act
      final result = DramaResponse.fromJson(jsonMatcherNull);

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
