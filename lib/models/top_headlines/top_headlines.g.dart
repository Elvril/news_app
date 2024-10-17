// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headlines.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TopHeadlinesImplAdapter extends TypeAdapter<_$TopHeadlinesImpl> {
  @override
  final int typeId = 2;

  @override
  _$TopHeadlinesImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TopHeadlinesImpl(
      status: fields[0] as String,
      totalResults: fields[1] as int,
      articles: (fields[2] as List).cast<Articles>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$TopHeadlinesImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.totalResults)
      ..writeByte(2)
      ..write(obj.articles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopHeadlinesImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopHeadlinesImpl _$$TopHeadlinesImplFromJson(Map<String, dynamic> json) =>
    _$TopHeadlinesImpl(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num).toInt(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Articles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopHeadlinesImplToJson(_$TopHeadlinesImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles.map((e) => e.toJson()).toList(),
    };
