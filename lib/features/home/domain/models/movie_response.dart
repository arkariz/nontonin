import 'package:equatable/equatable.dart';

class MovieResponse extends Equatable {
  final String title;
  final String year;
  final String imdb;
  final String poster;
  final String genre;
  final String runtime;
  final String director;
  final String country;
  final String rating;
  final String votes;
  final String sub;
  final String quality;

  const MovieResponse(
      {required this.title,
      required this.year,
      required this.imdb,
      required this.poster,
      required this.genre,
      required this.runtime,
      required this.director,
      required this.country,
      required this.rating,
      required this.votes,
      required this.sub,
      required this.quality});

  factory MovieResponse.fromJson(Map<String, dynamic> json) => MovieResponse(
        title: json['title'],
        year: json['year'],
        imdb: json['imdb'],
        poster: json['poster'],
        genre: json['genre'],
        runtime: json['runtime'],
        director: json['director'],
        country: json['country'],
        rating: json['rating'],
        votes: json['votes'],
        sub: json['sub'],
        quality: json['quality'],
      );

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
