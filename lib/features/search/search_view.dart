import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:news_app/features/home/providers/connectivity_provider.dart';
import 'package:news_app/features/search/providers/filters_providers.dart';
import 'package:news_app/features/search/providers/search_query_provider.dart';
import 'package:news_app/features/search/widgets/custom_ui_filtered_options.dart';
import 'package:news_app/features/search/widgets/list_view_news_searched.dart';
import 'package:news_app/utils/constants.dart' as constants;
import 'package:news_app/utils/styles.dart';
import 'package:news_app/widgets/network_error_dialog.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({
    super.key,
  });

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  String selectedFilter = 'by date';
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(now.year, now.month - 1, now.day),
      lastDate: now,
    );
    if (picked != null && picked != selectedDate) {
      ref
          .read(byDateProvider.notifier)
          .update((state) => picked.toIso8601String());
    }
  }

  void _filterMenu({
    required BuildContext context,
    required List<PopupMenuEntry<String>> items,
    required Function(String?) valueSorted,
  }) {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 100, 40, 0),
      items: items,
    ).then(valueSorted);
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);
    final sortBy = ref.watch(sortByProvider);
    final byDate = ref.watch(byDateProvider);
    final bySources = ref.watch(bySourcesProvider);
    final internetStatus = ref.watch(internetStatusProvider).value;
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(searchQuery),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: DropdownButton(
                        value: selectedFilter,
                        iconSize: 24,
                        elevation: 16,
                        style: Styles.textStyle14,
                        underline: Container(
                          height: 2,
                          color: Colors.blueAccent,
                        ),
                        items: constants.filters.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedFilter = newValue!;
                          });
                          if (selectedFilter == 'by date') {
                            _selectDate(context);
                          } else if (selectedFilter == 'sort by') {
                            _filterMenu(
                              context: context,
                              items: constants.sortBy.map((value) {
                                return PopupMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              valueSorted: (value) {
                                if (value != null) {
                                  ref
                                      .read(sortByProvider.notifier)
                                      .update((state) => value);
                                }
                              },
                            );
                          } else if (selectedFilter == 'by sources') {
                            _filterMenu(
                              context: context,
                              items: constants.sources.map((value) {
                                return PopupMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              valueSorted: (value) {
                                if (value != null) {
                                  ref
                                      .read(bySourcesProvider.notifier)
                                      .update((state) => value);
                                }
                              },
                            );
                          }
                        },
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          if (sortBy.isNotEmpty) ...[
                            CustomUiFilteredOptions(
                              onTap: () {
                                ref
                                    .read(sortByProvider.notifier)
                                    .update((state) => '');
                              },
                              title: sortBy,
                            ),
                          ],
                          if (byDate.isNotEmpty) ...[
                            CustomUiFilteredOptions(
                              onTap: () {
                                ref
                                    .read(byDateProvider.notifier)
                                    .update((state) => '');
                              },
                              title: byDate.split('T').first,
                            ),
                          ],
                          if (bySources.isNotEmpty) ...[
                            CustomUiFilteredOptions(
                              onTap: () {
                                ref
                                    .read(bySourcesProvider.notifier)
                                    .update((state) => '');
                              },
                              title: bySources,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: internetStatus == InternetStatus.connected
                    ? const ListViewNewsSearched()
                    : const NetworkErrorDialog(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
