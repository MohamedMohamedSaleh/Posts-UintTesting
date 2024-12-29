
part of 'posts_cubit.dart';

sealed class PostsState   {
  const PostsState();
}

final class PostsInitial extends PostsState {}


final class PostsLoading extends PostsState {}


final class PostsSuccess extends PostsState {
  final List<PostsModel> posts;
  const PostsSuccess(this.posts);
}

final class PostsError extends PostsState {
  final String message;
  const PostsError(this.message);
}

