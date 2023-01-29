// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeriesResponseAdapter extends TypeAdapter<SeriesResponse> {
  @override
  final int typeId = 1;

  @override
  SeriesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeriesResponse(
      id: fields[0] as String?,
      imdb: fields[1] as String?,
      title: fields[2] as String?,
      poster: fields[3] as String?,
      status: fields[4] as String?,
      type: fields[5] as String?,
      totalEpisode: fields[6] as String?,
      sub: fields[7] as String?,
      detail: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SeriesResponse obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imdb)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.poster)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.totalEpisode)
      ..writeByte(7)
      ..write(obj.sub)
      ..writeByte(8)
      ..write(obj.detail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
