import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class PostCoverImage extends StatelessWidget {
  const PostCoverImage(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    return AppCachedNetworkImage(
      imageUrl: url,
      height: 220,
      width: double.infinity,
    );
  }
}
