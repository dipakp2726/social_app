import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'package:social_app/features/post/models/post.dart';

class PostAuthor extends StatelessWidget {
  const PostAuthor(this.post, {super.key});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (post.author?.userName != null) {

        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        width: double.infinity,
        child: Row(
          children: [
            if (post.author?.profileImage != null)
              DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AppCachedNetworkImage(
                    imageUrl: post.author!.profileImage!,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (post.author?.name != null)
                    Text(
                      post.author!.name,
                      style: const TextStyle(fontSize: 18),
                    ),
                  Text(post.readablePublishDate),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
