import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:nontonin/features/home/domain/entity/anime_entity.dart';

part 'anime_response.g.dart';

@HiveType(typeId: 1)
class AnimeResponse extends Equatable {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? poster;

  @HiveField(3)
  String? genre;

  @HiveField(4)
  String? status;

  @HiveField(5)
  String? type;

  @HiveField(6)
  String? totalEpisode;

  @HiveField(7)
  String? sub;

  @HiveField(8)
  String? playerUrl;

  AnimeResponse({
    this.id,
    this.title,
    this.poster,
    this.genre,
    this.status,
    this.type,
    this.totalEpisode,
    this.sub,
    this.playerUrl,
  });

  AnimeResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    poster = json['poster'];
    genre = json['genre'];
    status = json['status'];
    type = json['type'];
    totalEpisode = json['total_episode'];
    sub = json['sub'];
    playerUrl = json['player_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['poster'] = poster;
    data['genre'] = genre;
    data['status'] = status;
    data['type'] = type;
    data['total_episode'] = totalEpisode;
    data['sub'] = sub;
    data['player_url'] = playerUrl;
    return data;
  }

  AnimeEntity toEntity() => AnimeEntity(
        id: id ?? "-",
        title: title ?? "-",
        poster: poster ?? "-",
        genre: genre ?? "-",
        status: status ?? "-",
        type: type ?? "-",
        totalEpisode: totalEpisode ?? "-",
        sub: sub ?? "-",
        playerUrl: playerUrl ?? "-",
      );

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
