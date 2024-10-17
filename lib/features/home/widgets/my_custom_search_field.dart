import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/router/route_names.dart';
import 'package:news_app/features/search/providers/search_query_provider.dart';
import 'package:news_app/utils/styles.dart';

class MyCustomSearchField extends ConsumerWidget {
  final TextEditingController controller;
  const MyCustomSearchField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 9,
            spreadRadius: 0,
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.04))
      ]),
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 1,
        borderRadius: BorderRadius.circular(6),
        child: TextField(
          controller: controller,
          onChanged: (value) {
            ref.read(searchQueryProvider.notifier).update((state) => value);
          },
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              context.goNamed(RouteName.searchView);
              controller.clear();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please search for something'),
                ),
              );
            }
          },
          decoration: InputDecoration(
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            hintText: 'Search..',
            hintStyle: Styles.textStyle14.copyWith(
              color: const Color(0xffBBBBBB),
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: InkWell(
                onTap: () {
                  if (controller.text.isNotEmpty) {
                    context.goNamed(RouteName.searchView);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please search for something'),
                      ),
                    );
                  }
                },
                child: const Icon(Icons.search_outlined)),
            suffixIcon: Material(
              color: Colors.transparent,
              child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    controller.clear();
                  },
                  child: const Icon(
                    Icons.cancel,
                    size: 16,
                  )),
            ),
            suffixIconColor: const Color(0xffBBBBBB),
            prefixIconColor: const Color(0xffBBBBBB),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
