import 'package:news_app/repositories/news_repository.dart';
import 'package:news_app/services/providers/news_api_services_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository_provider.g.dart';

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) {
  return NewsRepository(newsApiServices: ref.watch(newsApiServicesProvider));
}
