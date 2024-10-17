import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
class Source with _$Source {
  @HiveType(typeId: 1)
  const factory Source({
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('') String name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
