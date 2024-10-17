// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Articles _$ArticlesFromJson(Map<String, dynamic> json) {
  return _Articles.fromJson(json);
}

/// @nodoc
mixin _$Articles {
  @HiveField(0)
  Source get source => throw _privateConstructorUsedError;
  @HiveField(1)
  String get author => throw _privateConstructorUsedError;
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @HiveField(3)
  String get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String get url => throw _privateConstructorUsedError;
  @HiveField(5)
  String get urlToImage => throw _privateConstructorUsedError;
  @HiveField(6)
  String get publishedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesCopyWith<Articles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesCopyWith<$Res> {
  factory $ArticlesCopyWith(Articles value, $Res Function(Articles) then) =
      _$ArticlesCopyWithImpl<$Res, Articles>;
  @useResult
  $Res call(
      {@HiveField(0) Source source,
      @HiveField(1) String author,
      @HiveField(2) String title,
      @HiveField(3) String description,
      @HiveField(4) String url,
      @HiveField(5) String urlToImage,
      @HiveField(6) String publishedAt,
      @HiveField(7) String content});

  $SourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ArticlesCopyWithImpl<$Res, $Val extends Articles>
    implements $ArticlesCopyWith<$Res> {
  _$ArticlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? publishedAt = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res> get source {
    return $SourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticlesImplCopyWith<$Res>
    implements $ArticlesCopyWith<$Res> {
  factory _$$ArticlesImplCopyWith(
          _$ArticlesImpl value, $Res Function(_$ArticlesImpl) then) =
      __$$ArticlesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) Source source,
      @HiveField(1) String author,
      @HiveField(2) String title,
      @HiveField(3) String description,
      @HiveField(4) String url,
      @HiveField(5) String urlToImage,
      @HiveField(6) String publishedAt,
      @HiveField(7) String content});

  @override
  $SourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$ArticlesImplCopyWithImpl<$Res>
    extends _$ArticlesCopyWithImpl<$Res, _$ArticlesImpl>
    implements _$$ArticlesImplCopyWith<$Res> {
  __$$ArticlesImplCopyWithImpl(
      _$ArticlesImpl _value, $Res Function(_$ArticlesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? publishedAt = null,
    Object? content = null,
  }) {
    return _then(_$ArticlesImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 0)
class _$ArticlesImpl implements _Articles {
  const _$ArticlesImpl(
      {@HiveField(0) this.source = const Source(),
      @HiveField(1) this.author = '',
      @HiveField(2) this.title = '',
      @HiveField(3) this.description = '',
      @HiveField(4) this.url = '',
      @HiveField(5) this.urlToImage = '',
      @HiveField(6) this.publishedAt = '',
      @HiveField(7) this.content = ''});

  factory _$ArticlesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticlesImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final Source source;
  @override
  @JsonKey()
  @HiveField(1)
  final String author;
  @override
  @JsonKey()
  @HiveField(2)
  final String title;
  @override
  @JsonKey()
  @HiveField(3)
  final String description;
  @override
  @JsonKey()
  @HiveField(4)
  final String url;
  @override
  @JsonKey()
  @HiveField(5)
  final String urlToImage;
  @override
  @JsonKey()
  @HiveField(6)
  final String publishedAt;
  @override
  @JsonKey()
  @HiveField(7)
  final String content;

  @override
  String toString() {
    return 'Articles(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesImplCopyWith<_$ArticlesImpl> get copyWith =>
      __$$ArticlesImplCopyWithImpl<_$ArticlesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticlesImplToJson(
      this,
    );
  }
}

abstract class _Articles implements Articles {
  const factory _Articles(
      {@HiveField(0) final Source source,
      @HiveField(1) final String author,
      @HiveField(2) final String title,
      @HiveField(3) final String description,
      @HiveField(4) final String url,
      @HiveField(5) final String urlToImage,
      @HiveField(6) final String publishedAt,
      @HiveField(7) final String content}) = _$ArticlesImpl;

  factory _Articles.fromJson(Map<String, dynamic> json) =
      _$ArticlesImpl.fromJson;

  @override
  @HiveField(0)
  Source get source;
  @override
  @HiveField(1)
  String get author;
  @override
  @HiveField(2)
  String get title;
  @override
  @HiveField(3)
  String get description;
  @override
  @HiveField(4)
  String get url;
  @override
  @HiveField(5)
  String get urlToImage;
  @override
  @HiveField(6)
  String get publishedAt;
  @override
  @HiveField(7)
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ArticlesImplCopyWith<_$ArticlesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
