import 'package:equatable/equatable.dart';

class MovieDetailResponse extends Equatable {
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

  const MovieDetailResponse(
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

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      MovieDetailResponse(
        title: json['Title'] ?? "-",
        year: json['Year'] ?? "-",
        rated: json['Rated'] ?? "-",
        released: json['Released'] ?? "-",
        runtime: json['Runtime'] ?? "-",
        genre: json['Genre'] ?? "-",
        director: json['Director'] ?? "-",
        writer: json['Writer'] ?? "-",
        actors: json['Actors'] ?? "-",
        plot: json['Plot'] ?? "-",
        language: json['Language'] ?? "-",
        country: json['Country'] ?? "-",
        awards: json['Awards'] ?? "-",
        poster: json['Poster'] ?? "-",
        imdbRating: json['imdbRating'] ?? "-",
        imdbVotes: json['imdbVotes'] ?? "-",
        imdbID: json['imdbID'] ?? "-",
        type: json['Type'] ?? "-",
        production: json['Production'] ?? "-",
        response: json['Response'] ?? "-",
        playerUrl: json['player_url'] ?? "-",
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Title'] = title;
    data['Year'] = year;
    data['Rated'] = rated;
    data['Released'] = released;
    data['Runtime'] = runtime;
    data['Genre'] = genre;
    data['Director'] = director;
    data['Writer'] = writer;
    data['Actors'] = actors;
    data['Plot'] = plot;
    data['Language'] = language;
    data['Country'] = country;
    data['Awards'] = awards;
    data['Poster'] = poster;
    data['imdbRating'] = imdbRating;
    data['imdbVotes'] = imdbVotes;
    data['imdbID'] = imdbID;
    data['Type'] = type;
    data['Production'] = production;
    data['Response'] = response;
    data['player_url'] = playerUrl;
    return data;
  }

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
