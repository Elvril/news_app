import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/exceptions/news_exception.dart';
import 'package:news_app/models/custom_error/custom_error.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';
import 'package:news_app/services/providers/dio_error_handler.dart';

class NewsApiServices {
  final Dio dio;

  NewsApiServices({
    required this.dio,
  });

  Future<TopHeadlines> getTopHeadlinesByCategory(
      int page, String category) async {
    try {
      final Response response = await dio.get(
        '/v2/top-headlines',
        queryParameters: {
          'category': category,
          'apiKey': dotenv.env['API_KEY'],
          'page': page,
        },
      );
      if (response.statusCode != 200) {
        throw dioErrorHandler(response);
      }

      if (response.data.isEmpty) {
        throw 'No articles found.';
      }

      final newsTopHeadlinesByCategory = TopHeadlines.fromJson(response.data);

      final topHeadlinesBox = Hive.box<TopHeadlines>('topHeadlinesBox');

      topHeadlinesBox.put('cachedTopHeadlines_page${page}_category_$category',
          newsTopHeadlinesByCategory);

      return newsTopHeadlinesByCategory;
    } on NewsException catch (e) {
      throw CustomError(errorMessage: e.message);
    }
  }

  TopHeadlines? getStoredHeadlines(String category, int page) {
    final topHeadlinesBox = Hive.box<TopHeadlines>('topHeadlinesBox');
    return topHeadlinesBox
        .get('cachedTopHeadlines_page${page}_category_$category');
  }

  Future<TopHeadlines> searchNews(String search, int page, String? sortBy,
      String? sources, String? dateTime) async {
    try {
      final Response response = await dio.get(
        '/v2/everything',
        queryParameters: {
          'q': search,
          'page': page,
          if (sortBy != null && sortBy.isNotEmpty) 'sortBy': sortBy,
          if (sources != null && sources.isNotEmpty) 'sources': sources,
          if (dateTime != null && dateTime.isNotEmpty) 'from': dateTime,
          'apiKey': dotenv.env['API_KEY'],
        },
      );
      if (response.statusCode != 200) {
        throw dioErrorHandler(response);
      }
      if (response.data.isEmpty) {
        throw 'No articles found.';
      }

      final newsTopHeadlines = TopHeadlines.fromJson(response.data);

      return newsTopHeadlines;
    } catch (e) {
      rethrow;
    }
  }
}
