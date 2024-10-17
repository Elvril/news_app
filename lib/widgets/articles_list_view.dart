import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/router/route_names.dart';
import 'package:news_app/features/news_details/providers/news_detail_provider.dart';
import 'package:news_app/models/articles/articles.dart';
import 'package:news_app/utils/assets.dart';
import 'package:news_app/utils/styles.dart';

class ArticlesListView extends ConsumerWidget {
  const ArticlesListView({
    super.key,
    required this.article,
  });

  final Articles article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String date = article.publishedAt.split('T')[0];
    return InkWell(
      onTap: () {
        ref.read(newsDetailProvider.notifier).state = article;

        context.pushNamed(RouteName.newsDetailsView);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 364,
            height: 183,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: article.urlToImage.isNotEmpty
                  ? Image.network(
                      article.urlToImage,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          AssetsData.noImage,
                          fit: BoxFit.fill,
                        );
                      },
                    )
                  : Image.asset(AssetsData.noImage),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
            style: Styles.textStyle18,
          ),
          if (article.description.isNotEmpty) ...[
            const SizedBox(
              height: 5,
            ),
            Text(article.description,
                style: Styles.textStyle12.copyWith(
                  color: const Color(0xff76777B),
                )),
          ],
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(article.source.name, style: Styles.textStyle12),
              ),
              Text(date, style: Styles.textStyle12),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
