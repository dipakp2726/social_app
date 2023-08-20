// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_app/features/post/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        MaterialApp(home: Container()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
