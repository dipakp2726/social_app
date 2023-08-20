import 'dart:developer';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/features/post/models/post.dart';
import 'package:social_app/features/post/provider/current_post_provider.dart';
import 'package:social_app/features/post/view/widgets/app_bar_leading.dart';
import 'package:social_app/features/post/view/widgets/post_tags.dart';
import 'package:social_app/features/post/view/widgets/widgets.dart';

class ArticlePage extends ConsumerWidget {
  const ArticlePage({
    super.key,
  });

  /// The static route for CollectItemPage
  static Route<dynamic> route(Post post) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => ProviderScope(
        overrides: [
          currentPostProvider.overrideWithValue(AsyncData(post)),
        ],
        child: const ArticlePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(currentPostProvider);

    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
      ),
      body: SafeArea(
        bottom: false,
        child: article.when(
          data: (data) => _ArticleDetails(post: data),
          error: (error, stackTrace) {
            log('Error fetching Article');
            log(error.toString());
            return const ErrorView();
          },
          loading: () => const AppLoader(),
        ),
      ),
    );
  }
}

class _ArticleDetails extends StatelessWidget {
  const _ArticleDetails({
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (post.coverImage != null)
            Hero(
              tag: 'post${post.id}_cover_image',
              child: PostCoverImage(post.coverImage!),
            ),
          FadeInEffect(child: PostInfo(post, isMin: true)),
          AnimateInEffect(child: PostAuthor(post)),
          AnimateInEffect(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(
                post.title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          AnimateInEffect(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(post.description),
            ),
          ),
          FadeInEffect(child: PostTags(tags: post.tagList)),
          // AppHtml(data: article.bodyHtml),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
