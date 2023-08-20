import 'package:flutter/material.dart';

class PostTags extends StatelessWidget {
  const PostTags({super.key, required this.tags});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
      width: double.infinity,
      child: Wrap(
        spacing: 10,
        children: List.generate(
          tags.length,
          (index) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '# ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              Text(tags[index])
            ],
          ),
        ),
      ),
    );
  }
}
