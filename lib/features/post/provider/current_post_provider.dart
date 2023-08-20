import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:social_app/features/post/models/post.dart';

/// The provider that provides the pet data for each list item
///
/// Initially it throws an UnimplementedError because we won't use it
/// before overriding it
///
final currentPostProvider = Provider<AsyncValue<Post>>((ref) {
  throw UnimplementedError();
});
