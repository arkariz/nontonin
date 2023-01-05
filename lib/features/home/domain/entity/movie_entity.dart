import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
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

  const MovieEntity(
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
