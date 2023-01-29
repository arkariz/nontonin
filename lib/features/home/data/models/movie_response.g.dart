// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieResponseAdapter extends TypeAdapter<MovieResponse> {
  @override
  final int typeId = 1;

  @override
  MovieResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieResponse(
      title: fields[0] as String?,
      year: fields[1] as String?,
      imdb: fields[2] as String?,
      poster: fields[3] as String?,
      genre: fields[4] as String?,
      runtime: fields[5] as String?,
      director: fields[6] as String?,
      country: fields[7] as String?,
      rating: fields[8] as String?,
      votes: fields[9] as String?,
      sub: fields[10] as String?,
      quality: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieResponse obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.year)
      ..writeByte(2)
      ..write(obj.imdb)
      ..writeByte(3)
      ..write(obj.poster)
      ..writeByte(4)
      ..write(obj.genre)
      ..writeByte(5)
      ..write(obj.runtime)
      ..writeByte(6)
      ..write(obj.director)
      ..writeByte(7)
      ..write(obj.country)
      ..writeByte(8)
      ..write(obj.rating)
      ..writeByte(9)
      ..write(obj.votes)
      ..writeByte(10)
      ..write(obj.sub)
      ..writeByte(11)
      ..write(obj.quality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
