import 'package:flutter/material.dart';
import 'package:social_app/features/post/post.dart';
import 'package:social_app/features/post/widgets/post_list.dart';

/// {@template post_page}
/// A description for PostPage
/// {@endtemplate}
class PostListPage extends StatelessWidget {
  /// {@macro post_page}
  const PostListPage({super.key});

  /// The static route for PostPage
  static PageRoute<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const PostListPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostView(),
    );
  }
}

/// {@template post_view}
/// Displays the Body of PostView
/// {@endtemplate}
class PostView extends StatefulWidget {
  /// {@macro post_view}
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          key: const ValueKey('__app_bar_title_gesture_detector__'),
          onTap: () => scrollController.animateTo(
            scrollController.position.minScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
          child: const Text('Home Feed'),
        ),
        actions: const [FlutterLogo()],
      ),
      body: PostListWidget(scrollController),
    );
  }
}
