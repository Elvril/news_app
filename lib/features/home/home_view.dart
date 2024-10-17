import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:news_app/features/home/providers/connectivity_provider.dart';

import 'package:news_app/features/home/widgets/my_custom_search_field.dart';
import 'package:news_app/features/home/widgets/list_view_news_by_category.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/utils/styles.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  final TextEditingController controller = TextEditingController();
  final PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final connectivityAsyncValue = ref.watch(internetStatusProvider);
    return Scaffold(
      body: connectivityAsyncValue.when(
        data: (status) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'News App',
                        style: Styles.textStyle24,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  MyCustomSearchField(
                    controller: controller,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latest news',
                          style: Styles.textStyle18,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                categories.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueAccent,
                                        ),
                                        onPressed: () {
                                          pageController.animateToPage(index,
                                              duration: const Duration(
                                                  milliseconds: 400),
                                              curve: Curves.easeIn);
                                        },
                                        child: Text(
                                          categories[index],
                                          style: Styles.textStyle14
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    )),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: PageView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: pageController,
                            itemBuilder: (context, index) {
                              return ListViewNewsByCategory(
                                category: categories[index],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  if (status == InternetStatus.disconnected)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Colors.red,
                        width: double.infinity,
                        child: const Text(
                          'No internet connection. You are viewing cached data.',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) => Center(
          child: Text('error: $error'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
