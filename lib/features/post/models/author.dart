import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `author.dart` with the code generated
// by freezed
part 'author.freezed.dart';
// optional: since our [Author] class is serialisable, 
// we must add this line. but if [Author] was not serialisable, 
// we could skip it.
part 'author.g.dart';

@freezed
class Author with _$Author {
  const factory Author({
    required String name,
     String? userName,
     String? profileImage,
     String? placeholder,
  }) = _Author;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const Author._();

  /// Converts a JSON [Map] into a [Author] instance
  factory Author.fromJson(Map<String, dynamic> json) =>
      _$AuthorFromJson(json);
}