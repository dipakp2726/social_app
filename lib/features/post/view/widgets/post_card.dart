import 'package:flutter/material.dart';
import 'package:social_app/features/post/models/post.dart';
import 'package:social_app/features/post/view/pages/post_page.dart';
import 'package:social_app/features/post/view/widgets/widgets.dart';

import 'post_info.dart';
import 'post_tags.dart';

class PostCard extends StatelessWidget {
  const PostCard(this.post, {super.key});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          ArticlePage.route(post),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostAuthor(post),
          if (post.coverImage != null)
            Hero(
              tag: 'post${post.id}_cover_image',
              child: PostCoverImage(post.coverImage!),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                Text(post.description),
              ],
            ),
          ),
          PostTags(tags: post.tagList),
          const SizedBox(height: 10),
          PostInfo(
            post,
          ),
        ],
      ),
    );
  }
}
