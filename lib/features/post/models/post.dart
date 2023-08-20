// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/features/post/models/author.dart';

// required: associates our `post.dart` with the code generated
// by freezed
part 'post.freezed.dart';
// optional: since our [Post] class is serialisable,
// we must add this line. but if [Post] was not serialisable,
// we could skip it.
part 'post.g.dart';

/// user post
@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String title,
    required String description,
    required String readablePublishDate,
    required String? url,
    required int commentsCount,
    required int positiveReactionsCount,
    required String publishedTimestamp,
    required String? coverImage,
    required int readingTimeMinutes,
    required List<String> tagList,
    required String? bodyHtml,
    required String? bodyMarkdown,
    @JsonKey(name: 'user') required Author? author,
  }) = _Post;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const Post._();

  /// Converts a JSON [Map] into a [Post] instance
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
