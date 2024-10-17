import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/home/providers/news_provider.dart';
import 'package:news_app/features/search/providers/filters_providers.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/widgets/articles_list_view.dart';
import 'package:news_app/features/search/providers/search_query_provider.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';

class ListViewNewsSearched extends ConsumerWidget {
  const ListViewNewsSearched({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isDialogShowing = false;

    final searchQuery = ref.watch(searchQueryProvider);
    final sortBy = ref.watch(sortByProvider);
    final byDate = ref.watch(byDateProvider);
    final bySources = ref.watch(bySourcesProvider);
    final AsyncValue<TopHeadlines> resp = ref
        .watch(newsSearchedProvider(1, searchQuery, sortBy, bySources, byDate));
    final totalResult = resp.valueOrNull?.totalResults;
    return ListView.builder(
        itemCount: totalResult,
        itemBuilder: (context, index) {
          final page = index ~/ searchPageSize + 1;
          final indexInPage = index % searchPageSize;
          final AsyncValue<TopHeadlines> resp = ref.watch(newsSearchedProvider(
              page, searchQuery, sortBy, bySources, byDate));
          return resp.when(
            error: (error, stackTrace) {
              if (!isDialogShowing) {
                isDialogShowing = true;
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Error'),
                        content: const Text('there is no article'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text('ok'))
                        ],
                      );
                    },
                  );
                });
              }
              return null;
            },
            loading: () => Container(
              width: 364,
              height: 183,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(child: CircularProgressIndicator()),
            ),
            data: (data) {
              if (indexInPage >= data.articles.length) {
                return null;
              }
              final article = data.articles[indexInPage];
              return ArticlesListView(article: article);
            },
          );
        });
  }
}
