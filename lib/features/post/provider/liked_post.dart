import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'liked_post.g.dart';

/// Provider that stores adopted pets
@Riverpod(keepAlive: true)
class LikePost extends _$LikePost {
  final String adoptKey = 'adopt_key';

  @override
  List<int> build() {
    final list = <int>[];

    return list;
  }

  void likePost(int id) {
    state = [...state, id];
  }

  void unlike(int id) {
    state = [
      for (int i in state)
        if (i != id) i
    ];
  }
}

/// provider to check whether given pet is adopted or not
@riverpod
bool isPostLiked(IsPostLikedRef ref, {required int id}) {
  return ref.watch(likePostProvider).contains(id);
}
