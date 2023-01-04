import 'package:equatable/equatable.dart';

class SeriesEntity extends Equatable {
  final String id;
  final String imdb;
  final String title;
  final String poster;
  final String status;
  final String type;
  final String totalEpisode;
  final String sub;
  final String detail;

  const SeriesEntity({
    required this.id,
    required this.imdb,
    required this.title,
    required this.poster,
    required this.status,
    required this.type,
    required this.totalEpisode,
    required this.sub,
    required this.detail,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        imdb,
        title,
        poster,
        status,
        type,
        totalEpisode,
        sub,
        detail,
      ];
}
