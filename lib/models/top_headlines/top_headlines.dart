import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/models/articles/articles.dart';

part 'top_headlines.freezed.dart';
part 'top_headlines.g.dart';

@freezed
class TopHeadlines with _$TopHeadlines {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 2)
  const factory TopHeadlines({
    @HiveField(0) required String status,
    @HiveField(1) required int totalResults,
    @HiveField(2) required List<Articles> articles,
  }) = _TopHeadlines;

  factory TopHeadlines.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesFromJson(json);
}
