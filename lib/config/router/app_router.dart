import 'package:go_router/go_router.dart';
import 'package:news_app/config/router/route_names.dart';
import 'package:news_app/features/home/home_view.dart';
import 'package:news_app/features/news_details/news_details_view.dart';
import 'package:news_app/features/search/search_view.dart';
import 'package:riverpod/riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/${RouteName.homeView}', routes: [
    GoRoute(
      path: '/${RouteName.homeView}',
      name: RouteName.homeView,
      builder: (context, state) => const HomeView(),
      routes: [
        GoRoute(
          path: '/${RouteName.searchView}',
          name: RouteName.searchView,
          builder: (context, state) {
            return const SearchView();
          },
        ),
        GoRoute(
          path: '/${RouteName.newsDetailsView}',
          name: RouteName.newsDetailsView,
          builder: (context, state) => const NewsDetailsView(),
        ),
      ],
    ),
  ]);
});
