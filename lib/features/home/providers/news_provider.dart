import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:news_app/features/home/providers/connectivity_provider.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';
import 'package:news_app/repositories/providers/news_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_provider.g.dart';

@riverpod
FutureOr<TopHeadlines> fetchNewsByCategory(
    FetchNewsByCategoryRef ref, int page, String category) {
  final internetStatus = ref.watch(internetStatusProvider).value;
  final news = ref.read(newsRepositoryProvider);
  if (internetStatus == InternetStatus.disconnected) {
    return news.fetchNewsCachedTopHeadlines(page, category);
  } else {
    return news.fetchNewsTopHeadlinesByCategory(page, category);
  }
}

@Riverpod(keepAlive: true)
FutureOr<TopHeadlines> newsSearched(NewsSearchedRef ref, int page, String query,
    String? sortBy, String? sources, String? dateTime) {
  final news = ref.read(newsRepositoryProvider);
  return news.newsSearched(query, page, sortBy, sources, dateTime);
}
