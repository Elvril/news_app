import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/features/home/providers/news_provider.dart';
import 'package:news_app/models/custom_error/custom_error.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/widgets/articles_list_view.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';
import 'package:news_app/widgets/error_dialog.dart';

class ListViewNewsByCategory extends ConsumerStatefulWidget {
  final String category;
  const ListViewNewsByCategory({
    super.key,
    required this.category,
  });

  @override
  ConsumerState<ListViewNewsByCategory> createState() =>
      _ListViewNewsByCategoryState();
}

class _ListViewNewsByCategoryState
    extends ConsumerState<ListViewNewsByCategory> {
  @override
  Widget build(BuildContext context) {
    bool isDialogShowing = false;
    AsyncValue<TopHeadlines> responseAsync =
        ref.watch(fetchNewsByCategoryProvider(1, widget.category));
    final totalResult = responseAsync.valueOrNull?.totalResults;
    return RefreshIndicator(
      displacement: 5,
      color: Colors.white,
      backgroundColor: const Color(0xff76777B),
      onRefresh: () async {
        return await ref
            .refresh(fetchNewsByCategoryProvider(1, widget.category));
      },
      child: ListView.builder(
        itemCount: totalResult,
        itemBuilder: (context, index) {
          final page = index ~/ pageSize + 1;
          final indexInPage = index % pageSize;
          final AsyncValue<TopHeadlines> responseAsync =
              ref.watch(fetchNewsByCategoryProvider(page, widget.category));
          return responseAsync.when(
            error: (err, stack) {
              if (!isDialogShowing) {
                isDialogShowing = true;
                Future.delayed(
                  Duration.zero,
                  () {
                    errorDialog(context, (err as CustomError).errorMessage);
                  },
                );
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
        },
      ),
    );
  }
}
