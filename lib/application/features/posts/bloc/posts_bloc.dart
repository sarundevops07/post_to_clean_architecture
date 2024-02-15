import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:postblocapp/domain/failures/main_failure.dart';
import 'package:postblocapp/domain/repositories/post_repository.dart';
//import 'package:postblocapp/domain/usecases/post_usecase.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostRepo postRepo;
  PostsBloc(this.postRepo) : super(PostsState.initial()) {

    on<GetPostFromDataSource>((event, emit) async {
      
      // initial state

      emit( state.copyWith(isLoading: true));

      // getting data from api
      final result = await postRepo.getPostFromDataSource();
      log("log from bloc $result");
      result.fold(
        (MainFailures failures) => emit(state.copyWith(
          isError: true,
          isLoading: false,
          posts: [],
        )),
        (List<PostEntity> success) => emit(
            state.copyWith(isError: false, isLoading: false, posts: success)),
      );
      // emit(postsData);
    });
  }
}