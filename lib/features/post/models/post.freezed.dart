// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get readablePublishDate => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  int get positiveReactionsCount => throw _privateConstructorUsedError;
  String get publishedTimestamp => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  int get readingTimeMinutes => throw _privateConstructorUsedError;
  List<String> get tagList => throw _privateConstructorUsedError;
  String? get bodyHtml => throw _privateConstructorUsedError;
  String? get bodyMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  Author? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String readablePublishDate,
      String? url,
      int commentsCount,
      int positiveReactionsCount,
      String publishedTimestamp,
      String? coverImage,
      int readingTimeMinutes,
      List<String> tagList,
      String? bodyHtml,
      String? bodyMarkdown,
      @JsonKey(name: 'user') Author? author});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? readablePublishDate = null,
    Object? url = freezed,
    Object? commentsCount = null,
    Object? positiveReactionsCount = null,
    Object? publishedTimestamp = null,
    Object? coverImage = freezed,
    Object? readingTimeMinutes = null,
    Object? tagList = null,
    Object? bodyHtml = freezed,
    Object? bodyMarkdown = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      readablePublishDate: null == readablePublishDate
          ? _value.readablePublishDate
          : readablePublishDate // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      positiveReactionsCount: null == positiveReactionsCount
          ? _value.positiveReactionsCount
          : positiveReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedTimestamp: null == publishedTimestamp
          ? _value.publishedTimestamp
          : publishedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      tagList: null == tagList
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bodyHtml: freezed == bodyHtml
          ? _value.bodyHtml
          : bodyHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMarkdown: freezed == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String readablePublishDate,
      String? url,
      int commentsCount,
      int positiveReactionsCount,
      String publishedTimestamp,
      String? coverImage,
      int readingTimeMinutes,
      List<String> tagList,
      String? bodyHtml,
      String? bodyMarkdown,
      @JsonKey(name: 'user') Author? author});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? readablePublishDate = null,
    Object? url = freezed,
    Object? commentsCount = null,
    Object? positiveReactionsCount = null,
    Object? publishedTimestamp = null,
    Object? coverImage = freezed,
    Object? readingTimeMinutes = null,
    Object? tagList = null,
    Object? bodyHtml = freezed,
    Object? bodyMarkdown = freezed,
    Object? author = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      readablePublishDate: null == readablePublishDate
          ? _value.readablePublishDate
          : readablePublishDate // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      positiveReactionsCount: null == positiveReactionsCount
          ? _value.positiveReactionsCount
          : positiveReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedTimestamp: null == publishedTimestamp
          ? _value.publishedTimestamp
          : publishedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      tagList: null == tagList
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bodyHtml: freezed == bodyHtml
          ? _value.bodyHtml
          : bodyHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMarkdown: freezed == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  const _$_Post(
      {required this.id,
      required this.title,
      required this.description,
      required this.readablePublishDate,
      required this.url,
      required this.commentsCount,
      required this.positiveReactionsCount,
      required this.publishedTimestamp,
      required this.coverImage,
      required this.readingTimeMinutes,
      required final List<String> tagList,
      required this.bodyHtml,
      required this.bodyMarkdown,
      @JsonKey(name: 'user') required this.author})
      : _tagList = tagList,
        super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String readablePublishDate;
  @override
  final String? url;
  @override
  final int commentsCount;
  @override
  final int positiveReactionsCount;
  @override
  final String publishedTimestamp;
  @override
  final String? coverImage;
  @override
  final int readingTimeMinutes;
  final List<String> _tagList;
  @override
  List<String> get tagList {
    if (_tagList is EqualUnmodifiableListView) return _tagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagList);
  }

  @override
  final String? bodyHtml;
  @override
  final String? bodyMarkdown;
  @override
  @JsonKey(name: 'user')
  final Author? author;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, description: $description, readablePublishDate: $readablePublishDate, url: $url, commentsCount: $commentsCount, positiveReactionsCount: $positiveReactionsCount, publishedTimestamp: $publishedTimestamp, coverImage: $coverImage, readingTimeMinutes: $readingTimeMinutes, tagList: $tagList, bodyHtml: $bodyHtml, bodyMarkdown: $bodyMarkdown, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.readablePublishDate, readablePublishDate) ||
                other.readablePublishDate == readablePublishDate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.positiveReactionsCount, positiveReactionsCount) ||
                other.positiveReactionsCount == positiveReactionsCount) &&
            (identical(other.publishedTimestamp, publishedTimestamp) ||
                other.publishedTimestamp == publishedTimestamp) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.readingTimeMinutes, readingTimeMinutes) ||
                other.readingTimeMinutes == readingTimeMinutes) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            (identical(other.bodyHtml, bodyHtml) ||
                other.bodyHtml == bodyHtml) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      readablePublishDate,
      url,
      commentsCount,
      positiveReactionsCount,
      publishedTimestamp,
      coverImage,
      readingTimeMinutes,
      const DeepCollectionEquality().hash(_tagList),
      bodyHtml,
      bodyMarkdown,
      author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {required final int id,
      required final String title,
      required final String description,
      required final String readablePublishDate,
      required final String? url,
      required final int commentsCount,
      required final int positiveReactionsCount,
      required final String publishedTimestamp,
      required final String? coverImage,
      required final int readingTimeMinutes,
      required final List<String> tagList,
      required final String? bodyHtml,
      required final String? bodyMarkdown,
      @JsonKey(name: 'user') required final Author? author}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get readablePublishDate;
  @override
  String? get url;
  @override
  int get commentsCount;
  @override
  int get positiveReactionsCount;
  @override
  String get publishedTimestamp;
  @override
  String? get coverImage;
  @override
  int get readingTimeMinutes;
  @override
  List<String> get tagList;
  @override
  String? get bodyHtml;
  @override
  String? get bodyMarkdown;
  @override
  @JsonKey(name: 'user')
  Author? get author;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
