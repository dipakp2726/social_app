import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/features/post/provider/liked_post.dart';

import '../models/post.dart';

class PostInfo extends StatelessWidget {
  const PostInfo(this.post, {super.key, this.isMin = false});

  final Post post;
  final bool isMin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: isMin ? 10 : 20),
      decoration: BoxDecoration(
        border: isMin
            ? null
            : Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Theme.of(context).dividerColor.withOpacity(0.3),
                ),
              ),
        color: isMin
            ? Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).dividerColor.withOpacity(0.3)
                : Theme.of(context).primaryColor.withOpacity(0.2)
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          postInfoItem(
            icon: Icons.comment,
            text: '${post.commentsCount} Comments',
          ),
          PostReaction(post: post),
          postInfoItem(
            icon: Icons.access_time,
            text: '${post.readingTimeMinutes} Min',
          ),
        ],
      ),
    );
  }
}

class PostReaction extends ConsumerWidget {
  const PostReaction({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = ref.watch(isPostLikedProvider(id: post.id));

    final positiveReactionsCount =
        post.positiveReactionsCount + (isLiked ? 1 : 0);

    final greyColor =
        Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.5);
    return InkWell(
      radius: 100,
      onTap: () {
        
        final notifier = ref.read(likePostProvider.notifier);
        if(!isLiked) {
          notifier.likePost(post.id);
        }else{
          notifier.unlike(post.id);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              Icons.favorite,
              size: 14,
              color: isLiked ? Colors.red : greyColor,
            ),
            const SizedBox(width: 5),
            Text(
              '${positiveReactionsCount} Reactions',
              style: TextStyle(
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class postInfoItem extends StatelessWidget {
  const postInfoItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color:
              Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.5),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            color:
                Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
