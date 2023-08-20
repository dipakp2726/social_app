import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/features/post/models/dummy_post_list.dart';
import 'package:social_app/features/post/models/post.dart';

part 'post_provider.g.dart';

/// post notifier
@riverpod
class PostList extends _$PostList {
  @override
  Future<List<Post>> build() async {
    final posts = dummyPostJsonList.map(Post.fromJson).toList();

    await Future.delayed(Duration(milliseconds: 5));

    return posts;
  }

  void addPost() {}
}
