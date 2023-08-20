// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_post.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPostLikedHash() => r'fc4f2787c14aa07f036c89103315ded1905f2af4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef IsPostLikedRef = AutoDisposeProviderRef<bool>;

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPostLiked].
@ProviderFor(isPostLiked)
const isPostLikedProvider = IsPostLikedFamily();

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPostLiked].
class IsPostLikedFamily extends Family<bool> {
  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPostLiked].
  const IsPostLikedFamily();

  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPostLiked].
  IsPostLikedProvider call({
    required int id,
  }) {
    return IsPostLikedProvider(
      id: id,
    );
  }

  @override
  IsPostLikedProvider getProviderOverride(
    covariant IsPostLikedProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isPostLikedProvider';
}

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPostLiked].
class IsPostLikedProvider extends AutoDisposeProvider<bool> {
  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPostLiked].
  IsPostLikedProvider({
    required this.id,
  }) : super.internal(
          (ref) => isPostLiked(
            ref,
            id: id,
          ),
          from: isPostLikedProvider,
          name: r'isPostLikedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPostLikedHash,
          dependencies: IsPostLikedFamily._dependencies,
          allTransitiveDependencies:
              IsPostLikedFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is IsPostLikedProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$likePostHash() => r'0ed9502dcc18b5d3fcc149a79b6fc420586fb57e';

/// Provider that stores adopted pets
///
/// Copied from [LikePost].
@ProviderFor(LikePost)
final likePostProvider = NotifierProvider<LikePost, List<int>>.internal(
  LikePost.new,
  name: r'likePostProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$likePostHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LikePost = Notifier<List<int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
