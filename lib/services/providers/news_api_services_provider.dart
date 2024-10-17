import 'package:news_app/services/news_api_services.dart';
import 'package:news_app/services/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_api_services_provider.g.dart';

@riverpod
NewsApiServices newsApiServices(NewsApiServicesRef ref) {
  return NewsApiServices(dio: ref.watch(dioProvider));
}
