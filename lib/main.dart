import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/config/router/app_router.dart';
import 'package:news_app/models/articles/articles.dart';
import 'package:news_app/models/source/source.dart';
import 'package:news_app/models/top_headlines/top_headlines.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ArticlesImplAdapter());
  Hive.registerAdapter(SourceImplAdapter());
  Hive.registerAdapter(TopHeadlinesImplAdapter());
  await Hive.openBox<Articles>('articleBox');
  await Hive.openBox<TopHeadlines>('topHeadlinesBox');
  await Hive.openBox<Source>('sourceBox');
  await dotenv.load(fileName: '.env');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: goRouter,
    );
  }
}
