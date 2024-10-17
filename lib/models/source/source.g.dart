// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SourceImplAdapter extends TypeAdapter<_$SourceImpl> {
  @override
  final int typeId = 1;

  @override
  _$SourceImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SourceImpl(
      id: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SourceImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
