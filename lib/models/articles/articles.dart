import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/models/source/source.dart';

part 'articles.freezed.dart';
part 'articles.g.dart';

@freezed
class Articles with _$Articles {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 0)
  const factory Articles({
    @HiveField(0) @Default(Source()) Source source,
    @HiveField(1) @Default('') String author,
    @HiveField(2) @Default('') String title,
    @HiveField(3) @Default('') String description,
    @HiveField(4) @Default('') String url,
    @HiveField(5) @Default('') String urlToImage,
    @HiveField(6) @Default('') String publishedAt,
    @HiveField(7) @Default('') String content,
  }) = _Articles;
  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}
