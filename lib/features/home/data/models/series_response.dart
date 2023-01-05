import 'package:equatable/equatable.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';

class SeriesResponse extends Equatable {
  String? id;
  String? imdb;
  String? title;
  String? poster;
  String? status;
  String? type;
  String? totalEpisode;
  String? sub;
  String? detail;

  SeriesResponse({
    this.id,
    this.imdb,
    this.title,
    this.poster,
    this.status,
    this.type,
    this.totalEpisode,
    this.sub,
    this.detail,
  });

  SeriesResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imdb = json['imdb'];
    title = json['title'];
    poster = json['poster'];
    status = json['status'];
    type = json['type'];
    totalEpisode = json['total_episode'];
    sub = json['sub'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imdb'] = imdb;
    data['title'] = title;
    data['poster'] = poster;
    data['status'] = status;
    data['type'] = type;
    data['total_episode'] = totalEpisode;
    data['sub'] = sub;
    data['detail'] = detail;
    return data;
  }

  SeriesEntity toEntity() => SeriesEntity(
        id: id ?? "-",
        imdb: imdb ?? "-",
        title: title ?? "-",
        poster: poster ?? "-",
        status: status ?? "-",
        type: type ?? "-",
        totalEpisode: totalEpisode ?? "-",
        sub: sub ?? "-",
        detail: detail ?? "-",
      );

  @override
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
