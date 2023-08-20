import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/features/post/view/post_list_page.dart';

import 'home_page.dart';

/// Main App Widget
class SocialApp extends ConsumerWidget {
  /// Creates new instance of [SocialApp]
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Social App',
      debugShowCheckedModeBanner: false,
      theme: const AppTheme().themeData,
      home: const HomePage(),
    );
  }
}
