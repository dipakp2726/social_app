import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:social_app/features/post/post.dart';

import 'package:social_app/features/post/widgets/post_card.dart';

class PostListWidget extends ConsumerWidget {
  const PostListWidget(
    this.scrollController, {
    super.key,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        // disposes the pages previously fetched. Next read will refresh them
        ref.invalidate(postListProvider);

        await Future.delayed(Duration(milliseconds: 10));

        // keep showing the progress indicator until the first page is fetched
        return ref.read(
          postListProvider.future,
        );
      },
      child: ListView.custom(
        controller: scrollController,
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            const pageSize = 20;

            final page = index ~/ pageSize + 1;
            final indexInPage = index % pageSize;

            final postList = ref.watch(postListProvider);

            return postList.when(
              error: (error, stackTrace) => const ErrorView(),
              loading: () => const AppLoader(),
              data: (posts) {
                return AnimatedScrollViewItem(
                  child: PostCard(posts[indexInPage]),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
