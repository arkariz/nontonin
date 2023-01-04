import 'package:equatable/equatable.dart';

class MovieDetailEntity extends Equatable {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String poster;
  final String imdbRating;
  final String imdbVotes;
  final String imdbID;
  final String type;
  final String production;
  final String response;
  final String playerUrl;

  const MovieDetailEntity(
      {required this.title,
      required this.year,
      required this.rated,
      required this.released,
      required this.runtime,
      required this.genre,
      required this.director,
      required this.writer,
      required this.actors,
      required this.plot,
      required this.language,
      required this.country,
      required this.awards,
      required this.poster,
      required this.imdbRating,
      required this.imdbVotes,
      required this.imdbID,
      required this.type,
      required this.production,
      required this.response,
      required this.playerUrl});

  @override
  List<Object?> get props => [
        title,
        year,
        rated,
        released,
        runtime,
        genre,
        director,
        writer,
        actors,
        plot,
        language,
        country,
        awards,
        poster,
        imdbRating,
        imdbVotes,
        imdbID,
        type,
        production,
        response,
        playerUrl,
      ];
}
