import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/features/news_details/providers/news_detail_provider.dart';
import 'package:news_app/utils/assets.dart';
import 'package:news_app/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsView extends ConsumerWidget {
  const NewsDetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(newsDetailProvider);
    final String date = article!.publishedAt.split('T')[0];

    Future<void> articleUrl() async {
      final Uri uri = Uri.parse(article.url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      article.source.name,
                      style: Styles.textStyle12,
                    ),
                  ),
                  Text(
                    date,
                    style: Styles.textStyle12,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 248,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
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
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                article.title,
                style: Styles.textStyle18,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                article.content,
                style: Styles.textStyle16,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Link of article:',
                style: Styles.textStyle12,
              ),
              InkWell(
                  onTap: () {
                    articleUrl();
                  },
                  child: Text(
                    article.url,
                    style: Styles.textStyle12.copyWith(color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
