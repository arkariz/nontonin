import 'package:equatable/equatable.dart';
import 'package:nontonin/features/home/domain/entity/drama_entity.dart';

class DramaResponse extends Equatable {
  String? id;
  String? title;
  String? poster;
  String? genre;
  String? status;
  String? type;
  String? totalEpisode;
  String? sub;
  String? playerUrl;

  DramaResponse({
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

  DramaResponse.fromJson(Map<String, dynamic> json) {
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

  DramaEntity toEntity() => DramaEntity(
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
