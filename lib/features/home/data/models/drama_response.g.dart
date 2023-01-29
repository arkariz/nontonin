// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drama_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DramaResponseAdapter extends TypeAdapter<DramaResponse> {
  @override
  final int typeId = 1;

  @override
  DramaResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DramaResponse(
      id: fields[0] as String?,
      title: fields[1] as String?,
      poster: fields[2] as String?,
      genre: fields[3] as String?,
      status: fields[4] as String?,
      type: fields[5] as String?,
      totalEpisode: fields[6] as String?,
      sub: fields[7] as String?,
      playerUrl: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DramaResponse obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.poster)
      ..writeByte(3)
      ..write(obj.genre)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.totalEpisode)
      ..writeByte(7)
      ..write(obj.sub)
      ..writeByte(8)
      ..write(obj.playerUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DramaResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
