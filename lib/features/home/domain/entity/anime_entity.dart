import 'package:equatable/equatable.dart';

class AnimeEntity extends Equatable {
  final String id;
  final String title;
  final String poster;
  final String genre;
  final String status;
  final String type;
  final String totalEpisode;
  final String sub;
  final String playerUrl;

  const AnimeEntity({
    required this.id,
    required this.title,
    required this.poster,
    required this.genre,
    required this.status,
    required this.type,
    required this.totalEpisode,
    required this.sub,
    required this.playerUrl,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        poster,
        genre,
        status,
        type,
        totalEpisode,
        sub,
        playerUrl,
      ];
}
