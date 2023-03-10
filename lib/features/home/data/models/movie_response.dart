import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:nontonin/features/home/domain/entity/movie_entity.dart';

part 'movie_response.g.dart';

@HiveType(typeId: 1)
class MovieResponse extends Equatable {
  @HiveField(0)
  String? title;

  @HiveField(1)
  String? year;

  @HiveField(2)
  String? imdb;

  @HiveField(3)
  String? poster;

  @HiveField(4)
  String? genre;

  @HiveField(5)
  String? runtime;

  @HiveField(6)
  String? director;

  @HiveField(7)
  String? country;

  @HiveField(8)
  String? rating;

  @HiveField(9)
  String? votes;

  @HiveField(10)
  String? sub;

  @HiveField(11)
  String? quality;

  MovieResponse({
    this.title,
    this.year,
    this.imdb,
    this.poster,
    this.genre,
    this.runtime,
    this.director,
    this.country,
    this.rating,
    this.votes,
    this.sub,
    this.quality,
  });

  MovieResponse.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    year = json['year'];
    imdb = json['imdb'];
    poster = json['poster'];
    genre = json['genre'];
    runtime = json['runtime'];
    director = json['director'];
    country = json['country'];
    rating = json['rating'];
    votes = json['votes'];
    sub = json['sub'];
    quality = json['quality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['year'] = year;
    data['imdb'] = imdb;
    data['poster'] = poster;
    data['genre'] = genre;
    data['runtime'] = runtime;
    data['director'] = director;
    data['country'] = country;
    data['rating'] = rating;
    data['votes'] = votes;
    data['sub'] = sub;
    data['quality'] = quality;
    return data;
  }

  MovieEntity toEntity() => MovieEntity(
        title: title ?? "-",
        year: year ?? "-",
        imdb: imdb ?? "-",
        poster: poster ?? "-",
        genre: genre ?? "-",
        runtime: runtime ?? "-",
        director: director ?? "-",
        country: country ?? "-",
        rating: rating ?? "-",
        votes: votes ?? "-",
        sub: sub ?? "-",
        quality: quality ?? "-",
      );

  @override
  List<Object?> get props => [
        title,
        year,
        imdb,
        poster,
        genre,
        runtime,
        director,
        country,
        rating,
        votes,
        sub,
        quality,
      ];
}
