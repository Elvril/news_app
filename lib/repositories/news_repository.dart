import 'package:news_app/exceptions/news_exception.dart';
import 'package:news_app/models/custom_error/custom_error.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';
import 'package:news_app/services/news_api_services.dart';

class NewsRepository {
  final NewsApiServices newsApiServices;
  NewsRepository({required this.newsApiServices});

  Future<TopHeadlines> fetchNewsTopHeadlinesByCategory(
      int page, String category) async {
    final cachedHeadLines = newsApiServices.getStoredHeadlines(category, page);
    if (cachedHeadLines != null && cachedHeadLines.articles.isNotEmpty) {
      return cachedHeadLines;
    } else {
      try {
        final TopHeadlines topHeadlines =
            await newsApiServices.getTopHeadlinesByCategory(page, category);
        return topHeadlines;
      } on NewsException catch (e) {
        throw CustomError(errorMessage: e.message);
      } catch (e) {
        throw CustomError(errorMessage: e.toString());
      }
    }
  }

  Future<TopHeadlines> fetchNewsCachedTopHeadlines(
      int page, String category) async {
    final cachedHeadLines = newsApiServices.getStoredHeadlines(category, page);

    if (cachedHeadLines != null && cachedHeadLines.articles.isNotEmpty) {
      return cachedHeadLines;
    } else {
      throw const CustomError(errorMessage: 'there is no cache provided');
    }
  }

  Future<TopHeadlines> newsSearched(String query, int page, String? sortBy,
      String? sources, String? dateTime) async {
    try {
      final TopHeadlines newsSearched = await newsApiServices.searchNews(
          query, page, sortBy, sources, dateTime);
      return newsSearched;
    } catch (e) {
      rethrow;
    }
  }
}
