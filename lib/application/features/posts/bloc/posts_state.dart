// posts_state.freezed.dart


part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required List<PostEntity> posts,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory PostsState.initial() =>
      const PostsState(posts: [], isLoading: false, isError: false);
}
