// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchNewsByCategoryHash() =>
    r'9aba34f72a90e51e0bea96f2e550156b4c36c4e6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchNewsByCategory].
@ProviderFor(fetchNewsByCategory)
const fetchNewsByCategoryProvider = FetchNewsByCategoryFamily();

/// See also [fetchNewsByCategory].
class FetchNewsByCategoryFamily extends Family<AsyncValue<TopHeadlines>> {
  /// See also [fetchNewsByCategory].
  const FetchNewsByCategoryFamily();

  /// See also [fetchNewsByCategory].
  FetchNewsByCategoryProvider call(
    int page,
    String category,
  ) {
    return FetchNewsByCategoryProvider(
      page,
      category,
    );
  }

  @override
  FetchNewsByCategoryProvider getProviderOverride(
    covariant FetchNewsByCategoryProvider provider,
  ) {
    return call(
      provider.page,
      provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchNewsByCategoryProvider';
}

/// See also [fetchNewsByCategory].
class FetchNewsByCategoryProvider
    extends AutoDisposeFutureProvider<TopHeadlines> {
  /// See also [fetchNewsByCategory].
  FetchNewsByCategoryProvider(
    int page,
    String category,
  ) : this._internal(
          (ref) => fetchNewsByCategory(
            ref as FetchNewsByCategoryRef,
            page,
            category,
          ),
          from: fetchNewsByCategoryProvider,
          name: r'fetchNewsByCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchNewsByCategoryHash,
          dependencies: FetchNewsByCategoryFamily._dependencies,
          allTransitiveDependencies:
              FetchNewsByCategoryFamily._allTransitiveDependencies,
          page: page,
          category: category,
        );

  FetchNewsByCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.category,
  }) : super.internal();

  final int page;
  final String category;

  @override
  Override overrideWith(
    FutureOr<TopHeadlines> Function(FetchNewsByCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchNewsByCategoryProvider._internal(
        (ref) => create(ref as FetchNewsByCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TopHeadlines> createElement() {
    return _FetchNewsByCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchNewsByCategoryProvider &&
        other.page == page &&
        other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchNewsByCategoryRef on AutoDisposeFutureProviderRef<TopHeadlines> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `category` of this provider.
  String get category;
}

class _FetchNewsByCategoryProviderElement
    extends AutoDisposeFutureProviderElement<TopHeadlines>
    with FetchNewsByCategoryRef {
  _FetchNewsByCategoryProviderElement(super.provider);

  @override
  int get page => (origin as FetchNewsByCategoryProvider).page;
  @override
  String get category => (origin as FetchNewsByCategoryProvider).category;
}

String _$newsSearchedHash() => r'a365b0cf30c8b753cecba42c0bd0c9f7276e52a0';

/// See also [newsSearched].
@ProviderFor(newsSearched)
const newsSearchedProvider = NewsSearchedFamily();

/// See also [newsSearched].
class NewsSearchedFamily extends Family<AsyncValue<TopHeadlines>> {
  /// See also [newsSearched].
  const NewsSearchedFamily();

  /// See also [newsSearched].
  NewsSearchedProvider call(
    int page,
    String query,
    String? sortBy,
    String? sources,
    String? dateTime,
  ) {
    return NewsSearchedProvider(
      page,
      query,
      sortBy,
      sources,
      dateTime,
    );
  }

  @override
  NewsSearchedProvider getProviderOverride(
    covariant NewsSearchedProvider provider,
  ) {
    return call(
      provider.page,
      provider.query,
      provider.sortBy,
      provider.sources,
      provider.dateTime,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsSearchedProvider';
}

/// See also [newsSearched].
class NewsSearchedProvider extends FutureProvider<TopHeadlines> {
  /// See also [newsSearched].
  NewsSearchedProvider(
    int page,
    String query,
    String? sortBy,
    String? sources,
    String? dateTime,
  ) : this._internal(
          (ref) => newsSearched(
            ref as NewsSearchedRef,
            page,
            query,
            sortBy,
            sources,
            dateTime,
          ),
          from: newsSearchedProvider,
          name: r'newsSearchedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsSearchedHash,
          dependencies: NewsSearchedFamily._dependencies,
          allTransitiveDependencies:
              NewsSearchedFamily._allTransitiveDependencies,
          page: page,
          query: query,
          sortBy: sortBy,
          sources: sources,
          dateTime: dateTime,
        );

  NewsSearchedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.query,
    required this.sortBy,
    required this.sources,
    required this.dateTime,
  }) : super.internal();

  final int page;
  final String query;
  final String? sortBy;
  final String? sources;
  final String? dateTime;

  @override
  Override overrideWith(
    FutureOr<TopHeadlines> Function(NewsSearchedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsSearchedProvider._internal(
        (ref) => create(ref as NewsSearchedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        query: query,
        sortBy: sortBy,
        sources: sources,
        dateTime: dateTime,
      ),
    );
  }

  @override
  FutureProviderElement<TopHeadlines> createElement() {
    return _NewsSearchedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewsSearchedProvider &&
        other.page == page &&
        other.query == query &&
        other.sortBy == sortBy &&
        other.sources == sources &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, sortBy.hashCode);
    hash = _SystemHash.combine(hash, sources.hashCode);
    hash = _SystemHash.combine(hash, dateTime.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsSearchedRef on FutureProviderRef<TopHeadlines> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `sortBy` of this provider.
  String? get sortBy;

  /// The parameter `sources` of this provider.
  String? get sources;

  /// The parameter `dateTime` of this provider.
  String? get dateTime;
}

class _NewsSearchedProviderElement extends FutureProviderElement<TopHeadlines>
    with NewsSearchedRef {
  _NewsSearchedProviderElement(super.provider);

  @override
  int get page => (origin as NewsSearchedProvider).page;
  @override
  String get query => (origin as NewsSearchedProvider).query;
  @override
  String? get sortBy => (origin as NewsSearchedProvider).sortBy;
  @override
  String? get sources => (origin as NewsSearchedProvider).sources;
  @override
  String? get dateTime => (origin as NewsSearchedProvider).dateTime;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
