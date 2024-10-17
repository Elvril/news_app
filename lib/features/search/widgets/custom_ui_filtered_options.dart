import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:news_app/utils/styles.dart';

class CustomUiFilteredOptions extends ConsumerWidget {
  final VoidCallback onTap;
  final String title;
  const CustomUiFilteredOptions({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              InkWell(
                onTap: onTap,
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: Styles.textStyle12.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
