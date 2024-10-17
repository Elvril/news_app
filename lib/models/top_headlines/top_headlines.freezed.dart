// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_headlines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopHeadlines _$TopHeadlinesFromJson(Map<String, dynamic> json) {
  return _TopHeadlines.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlines {
  @HiveField(0)
  String get status => throw _privateConstructorUsedError;
  @HiveField(1)
  int get totalResults => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Articles> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopHeadlinesCopyWith<TopHeadlines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlinesCopyWith<$Res> {
  factory $TopHeadlinesCopyWith(
          TopHeadlines value, $Res Function(TopHeadlines) then) =
      _$TopHeadlinesCopyWithImpl<$Res, TopHeadlines>;
  @useResult
  $Res call(
      {@HiveField(0) String status,
      @HiveField(1) int totalResults,
      @HiveField(2) List<Articles> articles});
}

/// @nodoc
class _$TopHeadlinesCopyWithImpl<$Res, $Val extends TopHeadlines>
    implements $TopHeadlinesCopyWith<$Res> {
  _$TopHeadlinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Articles>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopHeadlinesImplCopyWith<$Res>
    implements $TopHeadlinesCopyWith<$Res> {
  factory _$$TopHeadlinesImplCopyWith(
          _$TopHeadlinesImpl value, $Res Function(_$TopHeadlinesImpl) then) =
      __$$TopHeadlinesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String status,
      @HiveField(1) int totalResults,
      @HiveField(2) List<Articles> articles});
}

/// @nodoc
class __$$TopHeadlinesImplCopyWithImpl<$Res>
    extends _$TopHeadlinesCopyWithImpl<$Res, _$TopHeadlinesImpl>
    implements _$$TopHeadlinesImplCopyWith<$Res> {
  __$$TopHeadlinesImplCopyWithImpl(
      _$TopHeadlinesImpl _value, $Res Function(_$TopHeadlinesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$TopHeadlinesImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Articles>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2)
class _$TopHeadlinesImpl implements _TopHeadlines {
  const _$TopHeadlinesImpl(
      {@HiveField(0) required this.status,
      @HiveField(1) required this.totalResults,
      @HiveField(2) required final List<Articles> articles})
      : _articles = articles;

  factory _$TopHeadlinesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopHeadlinesImplFromJson(json);

  @override
  @HiveField(0)
  final String status;
  @override
  @HiveField(1)
  final int totalResults;
  final List<Articles> _articles;
  @override
  @HiveField(2)
  List<Articles> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlines(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlinesImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopHeadlinesImplCopyWith<_$TopHeadlinesImpl> get copyWith =>
      __$$TopHeadlinesImplCopyWithImpl<_$TopHeadlinesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopHeadlinesImplToJson(
      this,
    );
  }
}

abstract class _TopHeadlines implements TopHeadlines {
  const factory _TopHeadlines(
          {@HiveField(0) required final String status,
          @HiveField(1) required final int totalResults,
          @HiveField(2) required final List<Articles> articles}) =
      _$TopHeadlinesImpl;

  factory _TopHeadlines.fromJson(Map<String, dynamic> json) =
      _$TopHeadlinesImpl.fromJson;

  @override
  @HiveField(0)
  String get status;
  @override
  @HiveField(1)
  int get totalResults;
  @override
  @HiveField(2)
  List<Articles> get articles;
  @override
  @JsonKey(ignore: true)
  _$$TopHeadlinesImplCopyWith<_$TopHeadlinesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
