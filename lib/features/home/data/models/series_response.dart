import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:nontonin/features/home/domain/entity/series_entity.dart';

part 'series_response.g.dart';

@HiveType(typeId: 1)
class SeriesResponse extends Equatable {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String? imdb;

  @HiveField(2)
  String? title;

  @HiveField(3)
  String? poster;

  @HiveField(4)
  String? status;

  @HiveField(5)
  String? type;

  @HiveField(6)
  String? totalEpisode;

  @HiveField(7)
  String? sub;
  
  @HiveField(8)
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
