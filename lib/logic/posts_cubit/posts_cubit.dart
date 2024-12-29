
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_unit_testing/models/posts_model.dart';
part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());
}