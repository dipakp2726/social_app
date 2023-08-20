// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_app/features/post/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostPage', () {
    group('route', () {
      test('is routable', () {
        expect(PostListPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders PostView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: PostListPage()));
      expect(find.byType(PostView), findsOneWidget);
    });
  });
}
