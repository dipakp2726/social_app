// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      readablePublishDate: json['readable_publish_date'] as String,
      url: json['url'] as String?,
      commentsCount: json['comments_count'] as int,
      positiveReactionsCount: json['positive_reactions_count'] as int,
      publishedTimestamp: json['published_timestamp'] as String,
      coverImage: json['cover_image'] as String?,
      readingTimeMinutes: json['reading_time_minutes'] as int,
      tagList:
          (json['tag_list'] as List<dynamic>).map((e) => e as String).toList(),
      bodyHtml: json['body_html'] as String?,
      bodyMarkdown: json['body_markdown'] as String?,
      author: json['user'] == null
          ? null
          : Author.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'readable_publish_date': instance.readablePublishDate,
      'url': instance.url,
      'comments_count': instance.commentsCount,
      'positive_reactions_count': instance.positiveReactionsCount,
      'published_timestamp': instance.publishedTimestamp,
      'cover_image': instance.coverImage,
      'reading_time_minutes': instance.readingTimeMinutes,
      'tag_list': instance.tagList,
      'body_html': instance.bodyHtml,
      'body_markdown': instance.bodyMarkdown,
      'user': instance.author?.toJson(),
    };
